//
//  addNoteDelegate.swift
//  Convo
//
//  Created by Emily Koagedal on 6/15/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import Foundation

protocol addNoteDelegate {
    func didSaveNote(Note: NoteDto)
    func didCancelNote()
}
