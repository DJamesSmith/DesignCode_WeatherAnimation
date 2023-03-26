import Foundation

enum ForecastPeriod {
    case hourly
    case weekly
    case daily
}

enum Weather: String {
    case clear = "Clear"
    case cloudy = "Cloudy"
    case rainy = "Mid Rain"
    case stormy = "Showers"
    case sunny = "Sunny"
    case tornado = "Tornado"
    case windy = "Fast Wind"
}

struct Forecast: Identifiable {
    var id = UUID()
    var date: Date
    var weather: Weather
    var probability: Int
    var temperature: Int
    var high: Int
    var low: Int
    var location: String
    
    var icon: String {
        switch weather {
        case .clear:
            return "Moon"
        case .cloudy:
            return "Cloud"
        case .rainy:
            return "Moon cloud mid rain"
        case .stormy:
            return "Sun cloud angled rain"
        case .sunny:
            return "Sun"
        case .tornado:
            return "Tornado"
        case .windy:
            return "Moon cloud fast wind"
        }
    }
}

extension Forecast {
    static let hour: TimeInterval = 60 * 60
    static let day: TimeInterval = 60 * 60 * 24
    
    static let hourly: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: hour * -1), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Shimla, Himachal Pradesh"),
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Rohtak, Haryana"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 1), weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Dhanbad, Jharkhand"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 2), weather: .rainy, probability: 0, temperature: 18, high: 24, low: 18, location: "Montreal, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 3), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Bangalore, Karnataka"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 4), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Trivandrum, Kerala")
    ]
    
    static let weekly: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: 0), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Jaipur, Rajasthan"),
        Forecast(date: .init(timeIntervalSinceNow: day * 1), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Mumbai, Maharashtra"),
        Forecast(date: .init(timeIntervalSinceNow: day * 2), weather: .stormy, probability: 100, temperature: 19, high: 24, low: 18, location: "Imphal, Manipur"),
        Forecast(date: .init(timeIntervalSinceNow: day * 3), weather: .stormy, probability: 50, temperature: 18, high: 24, low: 18, location: "Shillong, Meghalaya"),
        Forecast(date: .init(timeIntervalSinceNow: day * 4), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Amritsar, Punjab"),
        Forecast(date: .init(timeIntervalSinceNow: day * 5), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Montreal, Canada")
    ]
    
    static let daily: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: 0), weather: .stormy, probability: 30, temperature: 19, high: 24, low: 18, location: "Bhopal, Madhya Pradesh"),
        Forecast(date: .init(timeIntervalSinceNow: day * 1), weather: .stormy, probability: 0, temperature: 19, high: 24, low: 18, location: "Gangtok, Sikkim"),
        Forecast(date: .init(timeIntervalSinceNow: day * 2), weather: .stormy, probability: 80, temperature: 19, high: 24, low: 18, location: "Chennai, Tamil Nadu"),
        Forecast(date: .init(timeIntervalSinceNow: day * 3), weather: .rainy, probability: 50, temperature: 18, high: 24, low: 18, location: "Lucknow, Uttar Pradesh"),
        Forecast(date: .init(timeIntervalSinceNow: day * 4), weather: .rainy, probability: 100, temperature: 19, high: 24, low: 18, location: "Dehradun, Uttarakhand"),
        Forecast(date: .init(timeIntervalSinceNow: day * 5), weather: .stormy, probability: 0, temperature: 19, high: 24, low: 18, location: "Kolkata, West Bengal")
    ]
    
    static let cities: [Forecast] = [
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Srinagar, J & K"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 20, high: 21, low: 19, location: "Leh, Ladakh"),
        Forecast(date: .now, weather: .stormy, probability: 0, temperature: 13, high: 16, low: 8, location: "Aizawl, Mizoram"),
        Forecast(date: .now, weather: .tornado, probability: 0, temperature: 23, high: 26, low: 16, location: "Ranchi, Jharkhand"),
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Kochi, Kerala"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 20, high: 21, low: 19, location: "Gwalior, Madhya Pradesh"),
        Forecast(date: .now, weather: .stormy, probability: 0, temperature: 13, high: 16, low: 8, location: "Dimapur, Nagaland"),
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Kota, Rajasthan")
    ]
}
