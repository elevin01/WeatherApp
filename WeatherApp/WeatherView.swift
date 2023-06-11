import SwiftUI

struct WeatherView: View {
    @State private var weatherData: WeatherModel?
    @State private var isLoading = false
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
            } else if let weatherData = weatherData {
                VStack(spacing: 16) {
                    Text(String(format: "%.2f°", weatherData.temperature))
                        .font(.system(size: 100, weight: .bold))
                    
                    Text(weatherData.description)
                        .font(.title)
                        .foregroundColor(.secondary)
                    
                    Button(action: {
                        fetchWeatherData()
                    }) {
                        Text("Fetch Weather")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .padding()
            } else {
                Button(action: {
                    fetchWeatherData()
                }) {
                    Text("Fetch Weather")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
        .onAppear {
            fetchWeatherData()
        }
    }
    
    private func fetchWeatherData() {
        isLoading = true
        
        WeatherFetcher().fetchWeatherData { result in
            isLoading = false
            
            switch result {
            case .success(let weatherData):
                self.weatherData = weatherData
            case .failure(let error):
                print("Error fetching weather data: \(error.localizedDescription)")
            }
        }
    }
}
