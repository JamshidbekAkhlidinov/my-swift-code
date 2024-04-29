//
//  NewsTableViewCell.swift
//  newsapplication
//
//  Created by ustadev.uz on 01/03/24.
//

import UIKit


class NewsTableViewCellViewModel{
    let title:String
    let subtitle:String?
    let imgUrl:URL?
    var imageData:Data? = nil
    
    init(title: String, subtitle: String?, imgUrl: URL?) {
        self.title = title
        self.subtitle = subtitle
        self.imgUrl = imgUrl
    }
}


class NewsTableViewCell: UITableViewCell {

   static let identifier = "NewsTableViewCell"
    
    private let newsTitleLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 25, weight: .medium)
        label.numberOfLines = 0
        return label
    }()
    
    private let subTitleLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    private let newsImageView:UIImageView = {
        let image = UIImageView();
        image.clipsToBounds = true
        image.backgroundColor = .secondarySystemBackground
        image.contentMode = .scaleAspectFit
       return image
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(newsTitleLabel)
        contentView.addSubview(subTitleLabel)
        contentView.addSubview(newsImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        newsTitleLabel.frame = CGRect(
            x: 10,
            y: 0,
            width: contentView.frame.size.width - 170,
            height:70
        )
        
        subTitleLabel.frame = CGRect(
           x: 10,
           y: 65,
           width: contentView.frame.size.width - 170,
           height:contentView.frame.size.height / 2
       )
       
        
         newsImageView.frame = CGRect(
            x: contentView.frame.size.width-160,
            y: 5,
            width: 150,
            height:contentView.frame.size.height - 10
        )
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        newsImageView.image = nil
        subTitleLabel.text  = nil
        newsTitleLabel.text  = nil
    }
    
    
    func configure(with viewModel:NewsTableViewCellViewModel){
        newsTitleLabel.text = viewModel.title
        subTitleLabel.text = viewModel.subtitle
        
        //images
        if let data = viewModel.imageData {
            newsImageView.image = UIImage(data: data)
        } else if let url = viewModel.imgUrl {
            //fetch
            URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
                guard let data = data, error == nil else { return }
                
                viewModel.imageData = data
                
                DispatchQueue.main.async {
                    self?.newsImageView.image = UIImage(data: data)
                }
                
            }.resume()
        }
        
    }
    
}
