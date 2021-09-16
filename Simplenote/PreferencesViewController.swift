import Cocoa

class PreferencesViewController: NSViewController {

    // MARK: Account Section Properties

    /// Account Email Title
    ///
    @IBOutlet var accountLabel: NSTextField!

    /// Account Email Label
    ///
    @IBOutlet var emailLabel: NSTextField!

    /// Log Out Button:
    ///
    @IBOutlet var logOutButton: NSButton!

    /// Delete Account Button
    ///
    @IBOutlet var deleteAccountButton: NSButton!

    // MARK: Note List Appearence Section Properties

    /// Note Sort Order Title
    ///
    @IBOutlet var noteSortOrderLabel: NSTextField!

    /// Note Line Length Title
    ///
    @IBOutlet var noteLineLengthLabel: NSTextField!

    /// Note Sort Order Pop Up Button
    ///
    @IBOutlet var sortOrderPopUp: NSPopUpButton!

    /// Line Length Full Radio Button
    ///
    @IBOutlet var lineLengthFullRadio: NSButton!

    /// Line Length Narrow Radio Button
    ///
    @IBOutlet var lineLengthNarrowRadio: NSButton!

    /// Condensed Note List Checkbox
    ///
    @IBOutlet var condensedNoteListCheckbox: NSButton!

    /// Sort Tags Alphabetically Checkbox
    ///
    @IBOutlet var sortTagsAlphabeticallyCheckbox: NSButton!

    // MARK: Theme Section Properties

    /// Theme Title Label
    ///
    @IBOutlet var themeLabel: NSTextField!

    /// Theme Pop Up Button
    ///
    @IBOutlet var themePopUp: NSPopUpButton!

    // MARK: Text Size Section Properties

    /// Text Size Title Label
    ///
    @IBOutlet var textSizeLabel: NSTextField!

    /// Text Size Slider
    ///
    @IBOutlet var textSizeSlider: NSSlider!

    // MARK: Analytics Section Properties

    /// Share Analytics Checkbox
    ///
    @IBOutlet var shareAnalyticsCheckbox: NSButton!

    /// Analytics Description Label
    ///
    @IBOutlet var analyticsDescrpitionLabel: NSTextField!

    // MARK: About Simplenote Section Properties

    /// About Simplenote Button
    ///
    @IBOutlet var aboutSimplenoteButton: NSButton!

}
