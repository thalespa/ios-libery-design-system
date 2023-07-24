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
        case primary
        case secondary
    }
    // Adicione outros estilos conforme necessário
    public var style: ButtonStyle = .primary {
        didSet {
            applyStyle()
        }
        
    }
       
    // Adicione propriedades para definir as cores do botão para diferentes estados
    public var normalColor: UIColor = .blue
    public var highlightedColor: UIColor = .red
       
       // Adicione propriedades para definir os cantos arredondados do botão
    public var cornerRadius: CGFloat = 8.0 {
        didSet {
            layer.cornerRadius = cornerRadius
           }
    }
       
    // Adicione métodos para configurar a aparência do botão com base no estilo definido
    private func applyStyle() {
        switch style {
        case .primary:
            backgroundColor = normalColor
            setTitleColor(.white, for: .normal)
        case .secondary:
            backgroundColor = .clear
            setTitleColor(normalColor, for: .normal)
            layer.borderColor = normalColor.cgColor
            layer.borderWidth = 2.0
            
        }
        // Defina outros estilos conforme necessário
        
    }
       
    // Adicione qualquer lógica adicional do botão, como animações ou tratamento de eventos
    // por exemplo, você pode adicionar um método para tratar o toque no botão
    @objc private func buttonTapped() {
    // Adicione aqui a lógica para tratar o toque no botão, se necessário
        
    }
    
    // Certifique-se de configurar as ações do botão no inicializador
    private func commonInit() {
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    
    // Sobrescreva o inicializador padrão para configurar o botão
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        
    }
    
}
