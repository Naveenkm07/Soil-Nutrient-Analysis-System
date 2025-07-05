package com.soilanalysis.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AnalysisController {
    @PostMapping("/analyze")
    public String analyze(@RequestParam String region,
                         @RequestParam int nitrogen,
                         @RequestParam int phosphorus,
                         @RequestParam int potassium,
                         @RequestParam double ph,
                         Model model) {
        
        StringBuilder result = new StringBuilder();
        result.append("📍 Region: ").append(region).append("\n\n");
        
        // Nutrient Analysis
        result.append("🔬 NUTRIENT ANALYSIS:\n");
        result.append("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n");
        
        // Nitrogen analysis
        result.append("Nitrogen (N): ").append(nitrogen).append(" mg/kg - ");
        if (nitrogen < 50) {
            result.append("❌ LOW - Needs nitrogen-rich fertilizer\n");
            result.append("   💡 Recommendation: Apply 10-15 kg N/acre\n");
        } else if (nitrogen < 100) {
            result.append("⚠️ MODERATE - Consider light nitrogen application\n");
            result.append("   💡 Recommendation: Apply 5-10 kg N/acre\n");
        } else {
            result.append("✅ SUFFICIENT - No additional nitrogen needed\n");
        }
        
        // Phosphorus analysis
        result.append("Phosphorus (P): ").append(phosphorus).append(" mg/kg - ");
        if (phosphorus < 30) {
            result.append("❌ LOW - Needs phosphorus-rich fertilizer\n");
            result.append("   💡 Recommendation: Apply 20-30 kg P₂O₅/acre\n");
        } else if (phosphorus < 60) {
            result.append("⚠️ MODERATE - Consider light phosphorus application\n");
            result.append("   💡 Recommendation: Apply 10-20 kg P₂O₅/acre\n");
        } else {
            result.append("✅ SUFFICIENT - No additional phosphorus needed\n");
        }
        
        // Potassium analysis
        result.append("Potassium (K): ").append(potassium).append(" mg/kg - ");
        if (potassium < 40) {
            result.append("❌ LOW - Needs potassium-rich fertilizer\n");
            result.append("   💡 Recommendation: Apply 25-35 kg K₂O/acre\n");
        } else if (potassium < 80) {
            result.append("⚠️ MODERATE - Consider light potassium application\n");
            result.append("   💡 Recommendation: Apply 15-25 kg K₂O/acre\n");
        } else {
            result.append("✅ SUFFICIENT - No additional potassium needed\n");
        }
        
        // pH analysis
        result.append("pH Level: ").append(ph).append(" - ");
        if (ph < 6.0) {
            result.append("❌ ACIDIC - May need lime application\n");
            result.append("   💡 Recommendation: Apply agricultural lime to raise pH\n");
        } else if (ph > 7.5) {
            result.append("❌ ALKALINE - May need sulfur application\n");
            result.append("   💡 Recommendation: Apply elemental sulfur to lower pH\n");
        } else {
            result.append("✅ OPTIMAL - pH is in ideal range for most crops\n");
        }
        
        result.append("\n");
        
        // Fertilizer Recommendations
        result.append("🌱 FERTILIZER RECOMMENDATIONS:\n");
        result.append("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n");
        
        // Calculate fertilizer needs
        int nDeficit = Math.max(0, 100 - nitrogen);
        int pDeficit = Math.max(0, 60 - phosphorus);
        int kDeficit = Math.max(0, 80 - potassium);
        
        if (nDeficit > 0 || pDeficit > 0 || kDeficit > 0) {
            result.append("Based on your soil analysis, consider these fertilizers:\n\n");
            
            if (nDeficit > 0) {
                result.append("🔵 Nitrogen Fertilizers:\n");
                result.append("   • Urea (46-0-0): ").append(Math.round(nDeficit * 0.5)).append(" kg/acre\n");
                result.append("   • Ammonium Nitrate (34-0-0): ").append(Math.round(nDeficit * 0.7)).append(" kg/acre\n");
                result.append("   • NPK 20-20-20: ").append(Math.round(nDeficit * 1.0)).append(" kg/acre\n\n");
            }
            
            if (pDeficit > 0) {
                result.append("🟡 Phosphorus Fertilizers:\n");
                result.append("   • DAP (18-46-0): ").append(Math.round(pDeficit * 0.65)).append(" kg/acre\n");
                result.append("   • SSP (0-16-0): ").append(Math.round(pDeficit * 1.25)).append(" kg/acre\n");
                result.append("   • NPK 10-26-26: ").append(Math.round(pDeficit * 1.0)).append(" kg/acre\n\n");
            }
            
            if (kDeficit > 0) {
                result.append("🟢 Potassium Fertilizers:\n");
                result.append("   • MOP (0-0-60): ").append(Math.round(kDeficit * 0.5)).append(" kg/acre\n");
                result.append("   • NPK 12-12-17: ").append(Math.round(kDeficit * 1.4)).append(" kg/acre\n");
                result.append("   • NPK 15-15-15: ").append(Math.round(kDeficit * 1.1)).append(" kg/acre\n\n");
            }
        } else {
            result.append("✅ Your soil has sufficient nutrients! No additional fertilizers needed.\n");
            result.append("   Consider organic matter application for soil health.\n\n");
        }
        
        // Application Tips
        result.append("📋 APPLICATION TIPS:\n");
        result.append("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n");
        result.append("• Apply fertilizers during the growing season\n");
        result.append("• Split applications for better efficiency\n");
        result.append("• Water thoroughly after application\n");
        result.append("• Test soil again after 3-6 months\n");
        result.append("• Consider organic alternatives for sustainable farming\n");
        
        model.addAttribute("result", result.toString());
        return "index";
    }
} 