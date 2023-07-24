//
//  Button.swift
//  libery
//
//  Created by Thales Andrade on 24/07/23.
//

import UIKit

public final class PVButton: UIButton {
    
    // Adicione propriedades para definir o estilo do botão
    public enum ButtonStyle {
        case standard
        case primary
        case info
        case sucess
        case warning
        case danger
        
        var color: String {
            switch self {
            case .standard:
                return "#343a40"
            case .primary:
                return "#20c997"
            case .info:
                return "#17a2b8"
            case .sucess:
                return "#28a745"
            case .warning:
                return "#ffc107"
            case .danger:
                return "#dc3545"
            }
        }
        
        var uiColor: UIColor {
            return UIColor(hex: self.color)
        }
    }
    
    // Adicione outros estilos conforme necessário
    public var style: ButtonStyle = .standard {
        didSet {
            applyStyle()
        }
        
    }
   
    // Adicione métodos para configurar a aparência do botão com base no estilo definido
    private func applyStyle() {
        self.backgroundColor = self.style.uiColor
        self.setTitleColor(.white, for: .normal)
    }
    
    // Adicione propriedades para definir os cantos arredondados do botão
    public var cornerRadius: CGFloat = 8.0 {
        didSet {
            layer.cornerRadius = cornerRadius
           }
    }
  
    // Sobrescreva o inicializador padrão para configurar o botão
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
}
