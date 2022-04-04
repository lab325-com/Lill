
import Foundation

struct ClimatModel: Codable {
    let deciduous: ClimateDeciduous?
    let habit: ClimateHabit?
    let hardiness: Int?
    let height: Int?
    let moisture: ClimateMoisture?
    let ph: ClimatePh?
    let shade: ClimateShade?
    let soil: ClimateSoil?
}

extension ClimateDeciduous: Codable {
    var localization: String {
        switch self {
        case .climateDeciduousDeciduous:
            return RLocalization.climate_deciduous_deciduous.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateDeciduousEvergreen:
            return RLocalization.climate_deciduous_evergreen.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .__unknown(_):
            return RLocalization.climante_deciduous_unknown.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}

extension ClimateHabit: Codable {
    var localization: String {
        switch self {
        case .climateHabitBamboo:
            return RLocalization.climate_habit_bamboo.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitFern:
            return RLocalization.climate_habit_fern.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitPerennialClimber:
            return RLocalization.climate_habit_perenial_climber.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitShrub:
            return RLocalization.climate_habit_shrub.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitTree:
            return RLocalization.climate_habit_tree.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitAnnualClimber:
            return RLocalization.climate_habit_climber.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitAnnualPerennial:
            return RLocalization.climate_habit_annual_perennial.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitBiennial:
            return RLocalization.climate_habit_biennial.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitBiennialPerennial:
            return RLocalization.climate_habit_biennial_perennial.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitBulb:
            return RLocalization.climate_habit_bulb.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitClimber:
            return RLocalization.climate_habit_climber.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateHabitPerennial:
            return RLocalization.climate_habit_perenial.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .__unknown(_):
            return RLocalization.climate_habit_unknown.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}

extension ClimateMoisture: Codable {
    var localization: String {
        switch self {
        case .climateMoistureD:
            return RLocalization.climate_moisture_d.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureDm:
            return RLocalization.climate_moisture_dm.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureM:
            return RLocalization.climate_moisture_m.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureDmw:
            return RLocalization.climate_moisture_dmw.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureDmwe:
            return RLocalization.climate_moisture_dmwe.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureMwe:
            return RLocalization.climate_moisture_mwe.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureMweWa:
            return RLocalization.climate_moisture_mwewa.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureWa:
            return RLocalization.climate_moisture_wa.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureWem:
            return RLocalization.climate_moisture_wem.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateMoistureWewa:
            return RLocalization.climate_moisture_wewa.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .__unknown(_):
            return RLocalization.climate_moisture_unknown.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}

extension ClimatePh: Codable {
    var localization: String {
        switch self {
        case .climatePhB:
            return RLocalization.climate_ph_b.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climatePhN:
            return RLocalization.climate_ph_n.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climatePhNb:
            return RLocalization.climate_ph_nb.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climatePhA:
            return RLocalization.climate_ph_a.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climatePhAn:
            return RLocalization.climate_ph_an.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climatePhAnb:
            return RLocalization.climate_ph_anb.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .__unknown(_):
            return RLocalization.climate_ph_unknown.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}

extension ClimateShade: Codable {
    var localization: String {
        switch self {
        case .climateShadeN:
            return RLocalization.climate_shade_n.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateShadeS:
            return RLocalization.climate_shade_s.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateShadeSn:
            return RLocalization.climate_shade_sn.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateShadeFs:
            return RLocalization.climate_shade_fs.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateShadeFsn:
            return RLocalization.climate_shade_fsn.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .__unknown(_):
            return RLocalization.climate_shade_unknown.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}

extension ClimateSoil: Codable {
    var localization: String {
        switch self {
        case .climateSoilM:
            return RLocalization.climate_soil_m.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateSoilMh:
            return RLocalization.climate_soil_mh.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateSoilL:
            return RLocalization.climate_soil_l.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateSoilLm:
            return RLocalization.climate_soil_lm.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .climateSoilLmh:
            return RLocalization.climate_soil_lmh.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .__unknown(_):
            return RLocalization.climate_soil_unknown.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}
