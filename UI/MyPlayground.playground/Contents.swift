import UIKit

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let maxPrice = monthlyBudget * 5 // 5 yilga 0 foizga to'lash
    let affordable = price <= monthlyBudget
    
    if affordable {
        return "Men \(vehicle) sotib olyapman"
    } else if price <= maxPrice {
        return "Agar \(vehicle) ni sotib olishni xoxlasam, tejamkor bo'lishim kerak."
    } else {
        return "Afsus! Men \(vehicle) ni ololmas ekanman."
    }
}

func licenseType(numberOfWheels: Int) -> String {
    switch numberOfWheels {
    case 2, 3:
        return "Transport vositangizni haydash uchun sizga motosikl guvohnomasi kerak bo’ladi."
    case 4, 6:
        return "Transport vositangizni haydash uchun sizga avtomobil guvohnomasi kerak bo’ladi."
    case 18:
        return "Transport vositangizni haydash uchun sizga tijorat yuk tashish avtomobili guvohnomasi kerak bo’ladi."
    default:
        return "Biz bu turdagi transport vositalariga guvohnoma bermaymiz."
    }
}

func calculateResellPrice(originalPrice: Double, yearsOld: Int) -> Double {
    let ageDiscount: Double
    
    if yearsOld <= 3 {
        ageDiscount = 0.8
    } else if yearsOld <= 10 {
        ageDiscount = 0.5
    } else {
        ageDiscount = 0.7
    }
    
    return originalPrice * ageDiscount
}

let buyMessage = canIBuy(vehicle: "Avtomobil", price: 20000, monthlyBudget: 5000)
print(buyMessage)

let licenseMessage = licenseType(numberOfWheels: 4)
print(licenseMessage)

let resellPrice = calculateResellPrice(originalPrice: 20000, yearsOld: 5)
print("Qayta sotish narxi: \(resellPrice)")
