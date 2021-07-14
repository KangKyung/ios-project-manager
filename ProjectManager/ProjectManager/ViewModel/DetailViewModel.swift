//
//  DetailViewModel.swift
//  ProjectManager
//
//  Created by 강경 on 2021/06/30.
//

import Foundation

final class DetailViewModel {
    private var item: MemoTableViewCellModel?
    
    func update(model: MemoTableViewCellModel?) {
        item = model
    }
    
    func itemInfo() -> MemoTableViewCellModel? {
        return item
    }
    
    func setItem(_ item: MemoTableViewCellModel?) {
        self.item = item
    }
    
    func tableItem() -> MemoTableViewCellModel? {
        return item
    }
   
    private func removeCell(
        at index: Int,
        tableViewType: TableViewType
    ) {
        // TODO: - server API "remove"
        Dummy.shared.remove(
            tableViewType: tableViewType,
            at: index
        )
    }
    
    func insert(
        cell: Memo,
        at index: Int = Dummy.shared.todo.endIndex,
        tableViewType: TableViewType
    ) {
        // TODO: - server API "insert"
        Dummy.shared.insert(
            tableViewType: tableViewType,
            cell: cell,
            at: index
        )
    }
    
    func edit(
        cell: Memo,
        at index: Int,
        tableViewType: TableViewType
    ) {
        removeCell(
            at: index,
            tableViewType: tableViewType
        )
        insert(
            cell: cell,
            at: index,
            tableViewType: tableViewType
        )
    }
}
