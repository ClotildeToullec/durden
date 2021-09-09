Class {
	#name : #SpDropInDragableContainer,
	#superclass : #SpPresenter,
	#instVars : [
		'toolbar',
		'dropInContainer',
		'window',
		'containerClass'
	],
	#category : #'Durden-Spec-DragDrop'
}

{ #category : #specs }
SpDropInDragableContainer class >> defaultSpec [

	^ SpBoxLayout newTopToBottom  
		  add: #toolbar height: self toolbarHeight ;
		  add: #dropInContainer
]

{ #category : #initialization }
SpDropInDragableContainer >> adaptToDropInto: aDestination [
	window close. 
]

{ #category : #initialization }
SpDropInDragableContainer >> beLeftToRight [
	dropInContainer beLeftToRight
]

{ #category : #initialization }
SpDropInDragableContainer >> beNormalContainer [

	dropInContainer := self instantiate: SpDropInContainer.
]

{ #category : #initialization }
SpDropInDragableContainer >> bePanedContainer [

	dropInContainer := self instantiate: SpDropInPanedContainer
]

{ #category : #initialization }
SpDropInDragableContainer >> beTopToBottom [

	dropInContainer beTopToBottom
]

{ #category : #initialization }
SpDropInDragableContainer >> initializePresenters [

	super initializePresenters.
	toolbar := self newToolbar.
	toolbar addItem: self newDragMeButton.
	self beNormalContainer.
]

{ #category : #initialization }
SpDropInDragableContainer >> initializeWindow: aWindow [ 
	window := aWindow.
]