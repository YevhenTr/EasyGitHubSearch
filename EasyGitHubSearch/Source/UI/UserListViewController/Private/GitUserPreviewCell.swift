//
//  GitUserPreviewCell.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 12.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

import Kingfisher

class GitUserPreviewCell: UITableViewCell {

    // MARK: - Subtypes
    
    private enum Constant {
        static let cornerRadius: CGFloat = 5
        static let borderWidth: CGFloat = 1
    }
    
    // MARK: - Properties
    
    @IBOutlet var borderedContainerView: UIView?

    @IBOutlet var avatarImageView: UIImageView?
    @IBOutlet var loginLabel: UILabel?
    @IBOutlet var userTypePrefixLabel: UILabel?
    @IBOutlet var userTypeLabel: UILabel?
    
    private var downloadTask: Kingfisher.DownloadTask?
    private let placeholder = UIImage(named: "userphoto_placeholder_image")
    
    // MARK: - View Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.configure()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.reset()
    }
    
    // MARK: - Public
    
    public func fill(with model: GitUserPreviewViewData) {
        self.downloadTask = self.avatarImageView?.kf
            .setImage(with: model.avatarURL, placeholder: self.placeholder)
        self.loginLabel?.text = model.name
        self.userTypeLabel?.text = model.type
    }
    
    // MARK: - Private
    
    private func configure() {
        let backgroundLayer = self.borderedContainerView?.layer
        backgroundLayer?.cornerRadius = Constant.cornerRadius
        backgroundLayer?.borderColor = UIColor.lightGray.cgColor
        backgroundLayer?.borderWidth = Constant.borderWidth
        
        let imageLayer = self.avatarImageView?.layer
        imageLayer?.cornerRadius = Constant.cornerRadius
        imageLayer?.masksToBounds = true
        
        
        self.userTypePrefixLabel?.text = "Type:"
        self.userTypePrefixLabel?.textColor = .black
        self.userTypeLabel?.textColor = .black
        self.loginLabel?.textColor = .black
    }
    
    private func reset() {
        self.loginLabel?.text = ""
        self.userTypeLabel?.text = ""
        self.avatarImageView?.image = nil
        self.downloadTask?.cancel()
    }
}
