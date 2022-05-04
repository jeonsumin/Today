//
//  ListViewController+DataSource.swift
//  Today
//
//  Created by Terry on 2022/05/04.
//

import UIKit

extension ReminderListViewController {
    func cellRegistrationHandler(cell: UICollectionViewListCell, indexPath: IndexPath, id: String ){
        let reminder = Reminder.sampleData[indexPath.item]
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = reminder.title
        //미리알림 기한 할당
        contentConfiguration.secondaryText = reminder.dueDate.dayAndTimeText
        // 글꼴 변경
        contentConfiguration.secondaryTextProperties.font = UIFont.preferredFont(forTextStyle: .caption1)
        cell.contentConfiguration = contentConfiguration
    }
}
