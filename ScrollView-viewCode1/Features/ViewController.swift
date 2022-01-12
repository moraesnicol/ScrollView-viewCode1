//
//  ViewController.swift
//  ScrollView-viewCode1
//
//  Created by Gabriel on 12/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    let stackViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 500).isActive = true
        view.backgroundColor = .red
        return view
    }()

    let blueView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.backgroundColor = .blue
        return view
    }()

    let greenView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 1200).isActive = true
        view.backgroundColor = .green
        return view
    }()
    
    private let adsOneImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .redraw
        imageView.image = UIImage(named: "ads2")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
       
    
    func setupUI() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackViewContainer)
        
        stackViewContainer.addArrangedSubview(redView)
        stackViewContainer.addArrangedSubview(blueView)
        stackViewContainer.addArrangedSubview(greenView)

        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        stackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        // this is important for scrolling
        stackViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        blueView.addSubview(adsOneImage)
        adsOneImage.centerXAnchor.constraint(equalTo: blueView.centerXAnchor).isActive = true
        adsOneImage.centerYAnchor.constraint(equalTo: blueView.centerYAnchor).isActive = true
        
//        adsOneImage.topAnchor.constraint(equalTo: blueView.topAnchor, constant: 2).isActive = true
//        adsOneImage.bottomAnchor.constraint(equalTo: blueView.bottomAnchor, constant: -2).isActive = true
//        adsOneImage.leadingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: 1).isActive = true
//        adsOneImage.trailingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: -100).isActive = true
        adsOneImage.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        adsOneImage.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        
        }
    
    
}
