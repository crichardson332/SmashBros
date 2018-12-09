//
//  ViewController.swift
//  SmashBrosMidtown
//
//  Created by Matthew Disharoon on 12/6/18.
//  Copyright © 2018 Matthew Disharoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// Outlets (labels and images) go here
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    @IBOutlet weak var player3Label: UILabel!
    @IBOutlet weak var player4Label: UILabel!
    @IBOutlet weak var player1CharacterImage: UIImageView!
    @IBOutlet weak var player2CharacterImage: UIImageView!
    @IBOutlet weak var player3CharacterImage: UIImageView!
    @IBOutlet weak var player4CharacterImage: UIImageView!
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var stageImage: UIImageView!
    @IBOutlet weak var Team1CharactersView: UIView!
    @IBOutlet weak var Team2CharactersView: UIView!
    @IBOutlet weak var letsPlayButton: UIButton!
    @IBOutlet weak var letsPlayBackground: UIImageView!
    @IBOutlet weak var letsPlayBackgroundInterior: UIImageView!
    
// Constants and variables go here
    let characterImageArray = ["DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","DonkeyKong","Falcon","Fox","Jigglypuff","Kirby","Link","Luigi","Mario","Ness","Pikachu","Samus","Yoshi","Star"]
    let playerArray = ["Chris","Rich","Jeff","Matt","Kat"]
    var chrisLabel:String = "Chris"
    var richLabel:String = "Rich"
    var jeffLabel:String = "Jeff"
    var mattLabel:String = "Matt"
    var katLabel:String = "Kat"
    let stageArray = ["Dreamland","HyruleCastle","PeachCastle","SaffronCity","SectorZ","YoshiIsland"]
    var dreamlandLabel:String = "Kirbys Dreamland"
    var hyruleCastleLabel:String = "Hyrule Castle"
    var peachCastleLabel:String = "Peach's Castle"
    var saffronCityLabel:String = "Saffron City"
    var sectorZLabel:String = "Sector Z"
    var yoshiIslandLabel:String = "Yoshi's Storybook"
    var randomPlayer1Index:Int = 0
    var randomPlayer2Index:Int = 0
    var randomPlayer3Index:Int = 0
    var randomPlayer4Index:Int = 0
    var randomPlayer1CharImage:Int = 0
    var randomPlayer2CharImage:Int = 0
    var randomPlayer3CharImage:Int = 0
    var randomPlayer4CharImage:Int = 0
    var randomTeams:Int = 0
    var randomStage:Int = 0
    
    
// Buttons go here
    @IBAction func letsPlayButton(_ sender: Any) {
        unhideBackgrounds();unHideAllLabels();randomizeTeams();changeCharacter1Image();changeCharacter2Image();changeCharacter3Image();changeCharacter4Image();randomizeStage(); letsPlayButton.titleLabel?.textColor = UIColor.white
    }
    
    
    @IBAction func Team1CharacterButton(_ sender: Any) {
        changeCharacter1Image();changeCharacter2Image()}
    @IBAction func Team2CharacterButton(_ sender: Any) {
        changeCharacter3Image();changeCharacter4Image()}
    @IBAction func StageImageButton(_ sender: Any) {
        randomizeStage()}
    

// Not sure what section to call this, just the default loading operations using functions from below
    override func viewDidLoad() {
        super.viewDidLoad();hideAllLabels();hideBackgrounds();letsPlayButtonRoundedEdge()}

    
// functions to be used above go here
    func changePlayer1Name(){
        randomPlayer1Index = Int.random(in: 0...3);
        if randomPlayer1Index == 0 {
            player1Label.text = chrisLabel}
        if randomPlayer1Index == 1 {
            player1Label.text = richLabel}
        if randomPlayer1Index == 2 {
            player1Label.text = jeffLabel}
        if randomPlayer1Index == 3 {
            player1Label.text = mattLabel}
        if randomPlayer1Index == 4 {
            player1Label.text = katLabel}}
    func changeCharacter1Image(){
        randomPlayer1CharImage = Int.random(in: 0...48)
        player1CharacterImage.image = UIImage(named: characterImageArray[randomPlayer1CharImage])
        if player1CharacterImage.image == player2CharacterImage.image {changeCharacter1Image()}
        if player1CharacterImage.image == player3CharacterImage.image {changeCharacter1Image()}
        if player1CharacterImage.image == player4CharacterImage.image {changeCharacter1Image()}}
    func changePlayer2Name(){
        randomPlayer2Index = Int.random(in: 0...3);
        if randomPlayer2Index == 0 {
            player2Label.text = chrisLabel}
        if randomPlayer2Index == 1 {
            player2Label.text = richLabel}
        if randomPlayer2Index == 2 {
            player2Label.text = jeffLabel}
        if randomPlayer2Index == 3 {
            player2Label.text = mattLabel}
        if randomPlayer2Index == 4 {
            player2Label.text = katLabel}}
    func changeCharacter2Image(){
        randomPlayer2CharImage = Int.random(in: 0...48)
        player2CharacterImage.image = UIImage(named: characterImageArray[randomPlayer2CharImage])
        if player2CharacterImage.image == player1CharacterImage.image {changeCharacter2Image()}
        if player2CharacterImage.image == player3CharacterImage.image {changeCharacter2Image()}
        if player2CharacterImage.image == player4CharacterImage.image {changeCharacter2Image()}}
    func changePlayer3Name(){
        randomPlayer3Index = Int.random(in: 0...3);
        if randomPlayer3Index == 0 {
            player3Label.text = chrisLabel}
        if randomPlayer3Index == 1 {
            player3Label.text = richLabel}
        if randomPlayer3Index == 2 {
            player3Label.text = jeffLabel}
        if randomPlayer3Index == 3 {
            player3Label.text = mattLabel}
        if randomPlayer3Index == 4 {
            player3Label.text = katLabel}}
    func changeCharacter3Image(){
        randomPlayer3CharImage = Int.random(in: 0...48)
        player3CharacterImage.image = UIImage(named: characterImageArray[randomPlayer3CharImage])
        if player3CharacterImage.image == player1CharacterImage.image {changeCharacter3Image()}
        if player3CharacterImage.image == player2CharacterImage.image {changeCharacter3Image()}
        if player3CharacterImage.image == player4CharacterImage.image {changeCharacter3Image()}}
    func changePlayer4Name(){
        randomPlayer4Index = Int.random(in: 0...3);
        if randomPlayer4Index == 0 {
            player4Label.text = chrisLabel}
        if randomPlayer4Index == 1 {
            player4Label.text = richLabel}
        if randomPlayer4Index == 2 {
            player4Label.text = jeffLabel}
        if randomPlayer4Index == 3 {
            player4Label.text = mattLabel}
        if randomPlayer4Index == 4 {
            player4Label.text = katLabel}}
    func changeCharacter4Image(){
        randomPlayer4CharImage = Int.random(in: 0...48)
        player4CharacterImage.image = UIImage(named: characterImageArray[randomPlayer4CharImage])
        if player4CharacterImage.image == player1CharacterImage.image {changeCharacter4Image()}
        if player4CharacterImage.image == player2CharacterImage.image {changeCharacter4Image()}
        if player4CharacterImage.image == player3CharacterImage.image {changeCharacter4Image()}}
    func randomizeTeams(){
        randomPlayer1Index = Int.random(in: 0...3)
        randomPlayer2Index = Int.random(in: 0...3)
        randomPlayer3Index = Int.random(in: 0...3)
        randomPlayer4Index = Int.random(in: 0...3)
        randomPlayer1Index = Int.random(in: 0...3);
        if randomPlayer1Index == 0 {player1Label.text = chrisLabel}
        if randomPlayer1Index == 1 {player1Label.text = richLabel}
        if randomPlayer1Index == 2 {player1Label.text = jeffLabel}
        if randomPlayer1Index == 3 {player1Label.text = mattLabel}
        if randomPlayer2Index == 4 {player1Label.text = katLabel}
        if randomPlayer2Index == 0 {player2Label.text = chrisLabel}
        if randomPlayer2Index == 1 {player2Label.text = richLabel}
        if randomPlayer2Index == 2 {player2Label.text = jeffLabel}
        if randomPlayer2Index == 3 {player2Label.text = mattLabel}
        if randomPlayer2Index == 4 {player2Label.text = katLabel}
        if randomPlayer3Index == 0 {player3Label.text = chrisLabel}
        if randomPlayer3Index == 1 {player3Label.text = richLabel}
        if randomPlayer3Index == 2 {player3Label.text = jeffLabel}
        if randomPlayer3Index == 3 {player3Label.text = mattLabel}
        if randomPlayer3Index == 4 {player3Label.text = katLabel}
        if randomPlayer4Index == 0 {player4Label.text = chrisLabel}
        if randomPlayer4Index == 1 {player4Label.text = richLabel}
        if randomPlayer4Index == 2 {player4Label.text = jeffLabel}
        if randomPlayer4Index == 3 {player4Label.text = mattLabel}
        if randomPlayer4Index == 4 {player4Label.text = katLabel}
        if player1Label.text == player2Label.text {randomizeTeams()}
        if player1Label.text == player3Label.text {randomizeTeams()}
        if player1Label.text == player4Label.text {randomizeTeams()}
        if player2Label.text == player3Label.text {randomizeTeams()}
        if player2Label.text == player4Label.text {randomizeTeams()}
        if player3Label.text == player4Label.text {randomizeTeams()}}
    func hideAllLabels(){
        player1Label.isHidden = true;
        player2Label.isHidden = true;
        player3Label.isHidden = true;
        player4Label.isHidden = true;
        stageLabel.isHidden = true}
    func unHideAllLabels(){
        player1Label.isHidden = false;
        player2Label.isHidden = false;
        player3Label.isHidden = false;
        player4Label.isHidden = false;
        stageLabel.isHidden = false}
    func randomizeStage(){
        randomStage = Int.random(in:0...5)
        stageImage.image = UIImage(named: stageArray[randomStage])
        if randomStage == 0 {stageLabel.text = dreamlandLabel}
        if randomStage == 1 {stageLabel.text = hyruleCastleLabel}
        if randomStage == 2 {stageLabel.text = peachCastleLabel}
        if randomStage == 3 {stageLabel.text = saffronCityLabel}
        if randomStage == 4 {stageLabel.text = sectorZLabel}
        if randomStage == 5 {stageLabel.text = yoshiIslandLabel}}
    func hideBackgrounds(){
        Team1CharactersView.isHidden = true
        Team2CharactersView.isHidden = true}
    func unhideBackgrounds(){
        Team1CharactersView.isHidden = false
        Team2CharactersView.isHidden = false}
    func letsPlayButtonRoundedEdge(){
        letsPlayBackground.layer.cornerRadius = 10
        letsPlayBackgroundInterior.layer.cornerRadius = 7}
    
    
// I DONT KNOW WHAT TO DO WITH THIS SHIT - I CANT GET IT TO WORK; I'm just trying to round the corners of each section
//    func roundAllCorners(){
//        player1Label.layer.cornerRadius = 10
//        player1Label.layer.maskedCorners = [.layerMinXMinYCorner]
//        player2Label.layer.cornerRadius = 10
//        player2Label.layer.maskedCorners = [.layerMaxXMinYCorner]
//        player3Label.layer.cornerRadius = 10
//        player3Label.layer.maskedCorners = [.layerMinXMinYCorner]
//        player4Label.layer.cornerRadius = 10
//        player4Label.layer.maskedCorners = [.layerMaxXMinYCorner]
//        Team1CharactersView.layer.cornerRadius = 10
//        Team1CharactersView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
//        Team2CharactersView.layer.cornerRadius = 10
//        Team2CharactersView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]}
    
}


    

