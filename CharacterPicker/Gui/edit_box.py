# edit_box.py
from PySide2 import QtWidgets, QtCore, QtGui
import CharacterPicker.Gui.custom_widgets as custom
import os
import importlib

importlib.reload(custom)


class EditBox(QtWidgets.QGroupBox):
    picker_added = QtCore.Signal(dict)  # {'label', 'grid_pos', 'size_in_cells'}
    picker_updated = QtCore.Signal(dict)  # {'label', 'grid_pos', 'size_in_cells'}
    add_button_signal = QtCore.Signal()  # No additional data

    def __init__(self, icon_dir, parent=None, tab_manager=None):
        super(EditBox, self).__init__("ToolBox", parent)
        self.icon_dir = icon_dir
        self.tab_manager = tab_manager  # Store a reference to the tab_manager
        self.init_ui()

    def init_ui(self):
        layout = QtWidgets.QVBoxLayout(self)
        layout.setSpacing(10)

        # 1. Character Settings Section (new CollapsibleBox)
        self.add_character_settings(layout)

        # 2. Page Settings Section
        self.add_page_settings(layout)

        # 3. Picker Button Section
        self.add_picker_button_controls(layout)

    def set_character_name_field(self, name):
        """Sets the character_name_input field to the given name."""
        self.character_name_input.setText(name or "")

    def set_page_name_field(self, name):
        """Sets the page_name_input field to the given name."""
        self.page_name_input.setText(name or "")

    def set_picker_label_field(self, label):
        """Sets the picker_label_input field to the given label."""
        self.picker_label_input.setText(label or "")

    def set_character_pic_button_enabled(self, enabled: bool):
        """Enable or disable the 'Set Character Picture' button."""
        self.character_pic_button.setEnabled(enabled)

    # ------------------------
    #  Character Settings
    # ------------------------
    def add_character_settings(self, parent_layout):
        """
        Creates a CollapsibleBox labeled "Character Settings" containing:
         - Row 1: A QLineEdit for character name, plus "Add New Character" and "Remove Current Character" buttons.
         - Row 2: "Add Page" and "Delete Page" buttons.
        """
        char_settings_box = custom.CollapsibleBox("Character Settings")
        parent_layout.addWidget(char_settings_box)

        # Main layout for everything inside this CollapsibleBox
        char_settings_layout = QtWidgets.QHBoxLayout()

        # Character Inputs
        character_inputs_layout = QtWidgets.QGridLayout()

        # Label for character pic file
        self.character_pic_label = QtWidgets.QLabel("Profile Picture:")
        self.character_pic_filename = QtWidgets.QLabel("None")

        # Input box for character name
        self.character_name_label = QtWidgets.QLabel("Character Name:")
        self.character_name_input = QtWidgets.QLineEdit()
        self.character_name_input.setPlaceholderText("Character Name")
        self.character_name_input.editingFinished.connect(self.update_character_name)

        # Button for adding character pic
        character_pic_size = QtCore.QSize(24, 24)  # Small square size for buttons
        self.character_pic_button = QtWidgets.QPushButton()
        self.character_pic_button.setIcon(QtGui.QIcon(":/file.svg"))  # Maya built-in icon
        self.character_pic_button.setFixedSize(character_pic_size)
        self.character_pic_button.setToolTip("Set Character Picture")
        self.character_pic_button.clicked.connect(self.set_character_pic)

        self.add_character_button = QtWidgets.QPushButton("Add Character")
        self.remove_character_button = QtWidgets.QPushButton("Delete Character")
        self.save_character_button = QtWidgets.QPushButton("Save Character")
        self.load_character_button = QtWidgets.QPushButton("Load Character")

        character_inputs_layout.addWidget(self.character_pic_label, 0, 0, alignment=QtCore.Qt.AlignRight)
        character_inputs_layout.addWidget(self.character_pic_filename, 0, 1)
        character_inputs_layout.addWidget(self.character_pic_button, 0, 2, 1, 2)
        character_inputs_layout.addWidget(self.character_name_label, 1, 0, alignment=QtCore.Qt.AlignRight)
        character_inputs_layout.addWidget(self.character_name_input, 1, 1)
        character_inputs_layout.addWidget(self.add_character_button, 1, 2)
        character_inputs_layout.addWidget(self.remove_character_button, 1, 3)
        character_inputs_layout.addWidget(self.save_character_button, 2, 0, 1, 2)
        character_inputs_layout.addWidget(self.load_character_button, 2, 2, 1, 2)

        # Set Fixed Width for Column 1
        character_inputs_layout.setColumnMinimumWidth(1, 200)

        # Set Column Stretch
        character_inputs_layout.setColumnStretch(0, 0)  # Column 1 stretches
        character_inputs_layout.setColumnStretch(1, 1)
        character_inputs_layout.setColumnStretch(2, 1)
        character_inputs_layout.setColumnStretch(3, 1)

        # Add a stretch before and after the form if desired
        char_settings_layout.addStretch()
        char_settings_layout.addLayout(character_inputs_layout)
        char_settings_layout.addStretch()

        # Set the CollapsibleBox content
        char_settings_box.setContentLayout(char_settings_layout)

    def update_character_name(self):
        """User finished editing the character_name_input."""
        new_name = self.character_name_input.text().strip()
        if not new_name:
            # Decide what to do if empty is disallowed
            return
        current_index = self.tab_manager.currentIndex()
        if current_index >= 0:
            self.tab_manager.setTabText(current_index, new_name)

    def set_character_pic(self):
        """Set a new background image."""
        image_path, _ = QtWidgets.QFileDialog.getOpenFileName(
            self, "Select Character Picture", "", "Image Files (*.png *.jpg *.jpeg *.bmp *.svg)"
        )
        if image_path:
            self.character_pic_filename.setText(f"{os.path.basename(image_path)}")
            current_tab = self.tab_manager.currentWidget()
            if current_tab:
                current_tab.set_tab_icon(image_path)

    # ------------------------
    #  Page Settings
    # ------------------------
    def add_page_settings(self, parent_layout):
        """Adds the Page Settings section."""
        page_settings_box = custom.CollapsibleBox("Page Settings")
        parent_layout.addWidget(page_settings_box)

        # 1) Create a vertical layout that will hold everything
        page_settings_container = QtWidgets.QVBoxLayout()

        # 2) The "top row" layout remains an HBox, same as before
        top_row_layout = QtWidgets.QHBoxLayout()

        # Left side: Name, Background, and Scale Factor
        left_layout = QtWidgets.QFormLayout()

        # Page Name Input
        self.page_name_input = QtWidgets.QLineEdit()
        self.page_name_input.setPlaceholderText("Enter page name")
        self.page_name_input.editingFinished.connect(self.update_page_name)
        left_layout.addRow("Page Name:", self.page_name_input)

        # Current Background Label
        self.bg_label = QtWidgets.QLabel("None")
        left_layout.addRow("Background:", self.bg_label)

        # Scale Factor Slider
        self.bg_scale_slider = QtWidgets.QSlider(QtCore.Qt.Horizontal)
        self.bg_scale_slider.setRange(0, 100)
        self.bg_scale_slider.setValue(50)  # Default = 50 => 1.0 scale
        self.bg_scale_slider.valueChanged.connect(self.on_bg_scale_changed)
        left_layout.addRow("Scale Factor:", self.bg_scale_slider)

        # Add a stretch before and after the form if desired
        top_row_layout.addStretch()
        top_row_layout.addLayout(left_layout)

        # Right side: Nudge Background Controls
        nudge_layout = QtWidgets.QGridLayout()
        button_size = QtCore.QSize(24, 24)  # Small square size for buttons

        up_button = QtWidgets.QPushButton("↑")
        up_button.setFixedSize(button_size)
        up_button.clicked.connect(self.nudge_bg_up)
        nudge_layout.addWidget(up_button, 0, 1)

        left_button = QtWidgets.QPushButton("←")
        left_button.setFixedSize(button_size)
        left_button.clicked.connect(self.nudge_bg_left)
        nudge_layout.addWidget(left_button, 1, 0)

        self.browse_bg_button = QtWidgets.QPushButton()
        self.browse_bg_button.setIcon(QtGui.QIcon(":/file.svg"))  # Maya built-in icon
        self.browse_bg_button.setFixedSize(button_size)
        self.browse_bg_button.setToolTip("Set Background")
        self.browse_bg_button.clicked.connect(self.set_background_image)
        nudge_layout.addWidget(self.browse_bg_button, 1, 1)

        right_button = QtWidgets.QPushButton("→")
        right_button.setFixedSize(button_size)
        right_button.clicked.connect(self.nudge_bg_right)
        nudge_layout.addWidget(right_button, 1, 2)

        down_button = QtWidgets.QPushButton("↓")
        down_button.setFixedSize(button_size)
        down_button.clicked.connect(self.nudge_bg_down)
        nudge_layout.addWidget(down_button, 2, 1)

        # Add the nudge_layout as part of the top_row_layout if desired
        top_row_layout.addLayout(nudge_layout)
        # Possibly another stretch at the end
        top_row_layout.addStretch()

        # 3) Add the top row (HBox) to the container (VBox)
        page_settings_container.addLayout(top_row_layout)

        # 4) Now create a new horizontal layout for the two new buttons
        bottom_button_layout = QtWidgets.QHBoxLayout()
        self.add_page_button = QtWidgets.QPushButton("Add Page")
        bottom_button_layout.addWidget(self.add_page_button)

        self.remove_page_button = QtWidgets.QPushButton("Delete Page")
        bottom_button_layout.addWidget(self.remove_page_button)

        # Make them stretch across the box if you like:
        # bottom_button_layout.setStretch(0, 1)
        # bottom_button_layout.setStretch(1, 1)

        # Add that horizontal layout to our vertical container
        page_settings_container.addLayout(bottom_button_layout)

        # 5) Finally, assign this vertical container as the content of the CollapsibleBox
        page_settings_box.setContentLayout(page_settings_container)

    def update_page_name(self):
        """User finished editing the page_name_input."""
        new_name = self.page_name_input.text().strip()
        if not new_name:
            return
        current_tab = self.tab_manager.currentWidget()
        if current_tab and hasattr(current_tab, "stacked_widget"):
            current_page = current_tab.stacked_widget.currentWidget()

            # 1) Update the page object's "page_name"
            if hasattr(current_page, "page_name"):
                current_page.page_name = new_name

            # 2) Find the button referencing this page and rename it
            if hasattr(current_tab, "page_buttons"):
                for page_button, page_obj in current_tab.page_buttons.items():
                    if page_obj == current_page:
                        page_button.setText(new_name)
                        break

    def on_bg_scale_changed(self, value):
        """Update the background scale factor based on the slider value."""
        current_tab = self.tab_manager.currentWidget()
        if current_tab:
            current_page = current_tab.stacked_widget.currentWidget()
            if hasattr(current_page, "set_bg_scale"):
                current_page.set_bg_scale(value)

    def set_background_image(self):
        """Set a new background image."""
        image_path, _ = QtWidgets.QFileDialog.getOpenFileName(
            self, "Select Background Image", "", "Image Files (*.png *.jpg *.jpeg *.bmp *.svg)"
        )
        if image_path:
            self.bg_label.setText(f"{os.path.basename(image_path)}")
            current_tab = self.tab_manager.currentWidget()
            if current_tab:
                current_tab.stacked_widget.currentWidget().set_background_image(image_path)

    def nudge_bg_left(self):
        current_tab = self.tab_manager.currentWidget()
        if current_tab:
            current_tab.stacked_widget.currentWidget().nudge_bg_left()

    def nudge_bg_right(self):
        current_tab = self.tab_manager.currentWidget()
        if current_tab:
            current_tab.stacked_widget.currentWidget().nudge_bg_right()

    def nudge_bg_up(self):
        current_tab = self.tab_manager.currentWidget()
        if current_tab:
            current_tab.stacked_widget.currentWidget().nudge_bg_up()

    def nudge_bg_down(self):
        current_tab = self.tab_manager.currentWidget()
        if current_tab:
            current_tab.stacked_widget.currentWidget().nudge_bg_down()

    # ------------------------
    #  Picker Button Section
    # ------------------------
    def add_picker_button_controls(self, parent_layout):
        """Adds the Picker Button section using CollapsibleBox."""
        picker_box = custom.CollapsibleBox("Picker Button")
        parent_layout.addWidget(picker_box)

        picker_layout = QtWidgets.QFormLayout()

        # Label Input
        self.picker_label_input = QtWidgets.QLineEdit()
        self.picker_label_input.editingFinished.connect(self.update_picker_button_name)
        picker_layout.addRow("Label:", self.picker_label_input)

        # Grid Position
        grid_pos_layout = QtWidgets.QHBoxLayout()
        self.picker_grid_x = QtWidgets.QDoubleSpinBox()
        self.picker_grid_x.setRange(-9999, 9999)
        self.picker_grid_x.setValue(0)
        grid_pos_layout.addWidget(self.picker_grid_x)

        self.picker_grid_y = QtWidgets.QDoubleSpinBox()
        self.picker_grid_y.setRange(-9999, 9999)
        self.picker_grid_y.setValue(0)
        grid_pos_layout.addWidget(self.picker_grid_y)
        picker_layout.addRow("Grid Pos (x, y):", grid_pos_layout)

        # Size Controls
        size_layout = QtWidgets.QHBoxLayout()
        self.picker_width = QtWidgets.QSpinBox()
        self.picker_width.setRange(1, 50)
        size_layout.addWidget(self.picker_width)

        self.picker_height = QtWidgets.QSpinBox()
        self.picker_height.setRange(1, 50)
        size_layout.addWidget(self.picker_height)
        picker_layout.addRow("Size (w, h):", size_layout)

        # Add and Delete Buttons
        button_layout = QtWidgets.QHBoxLayout()
        self.picker_submit_button = QtWidgets.QPushButton("Add")
        button_layout.addWidget(self.picker_submit_button)

        self.picker_delete_button = QtWidgets.QPushButton("Delete")
        button_layout.addWidget(self.picker_delete_button)
        picker_layout.addRow(button_layout)

        picker_box.setContentLayout(picker_layout)

    def update_picker_button_name(self):
        """User finished editing the picker_label_input."""
        new_label = self.picker_label_input.text().strip()
        if not new_label:
            return
        # You need a reference to the *currently selected* picker button
        # Typically, your main_window or tab_manager has something like self.selected_picker_button
        main_window = self.window()
        if hasattr(main_window, "selected_picker_button") and main_window.selected_picker_button:
            main_window.selected_picker_button.setText(new_label)

    # ------------------------
    #  Picker Button Logic
    # ------------------------
    def submit_picker(self):
        """Handle Add or Update button clicks."""
        label = self.picker_label_input.text()
        gx = self.picker_grid_x.value()
        gy = self.picker_grid_y.value()
        w = self.picker_width.value()
        h = self.picker_height.value()

        if self.picker_submit_button.text() == "Add":
            # Emit a signal to add a new picker button
            self.picker_added.emit({
                "label":label,
                "grid_pos":(int(gx), int(gy)),
                "size_in_cells":(w, h)
            })
        elif self.picker_submit_button.text() == "Update":
            # Emit a signal to update the selected picker button
            self.picker_updated.emit({
                "label":label,
                "grid_pos":(int(gx), int(gy)),
                "size_in_cells":(w, h)
            })

    def delete_picker(self):
        """Handle Delete button clicks."""
        # Emit a signal to delete the selected picker button
        self.parent().delete_selected_picker_button()

    def update_picker_button_fields(self, picker_button):
        """Update the EditBox fields based on the selected picker button."""
        if picker_button is None:
            # Deselect: clear fields and reset UI
            self.picker_label_input.setText("")
            self.picker_grid_x.setValue(0)
            self.picker_grid_y.setValue(0)
            self.picker_width.setValue(1)
            self.picker_height.setValue(1)

            self.picker_submit_button.setText("Add")
            self.picker_delete_button.setEnabled(False)
        else:
            # Select: populate fields with button's data
            self.picker_label_input.setText(picker_button.text())
            self.picker_grid_x.setValue(picker_button.grid_x)
            self.picker_grid_y.setValue(picker_button.grid_y)
            self.picker_width.setValue(picker_button.width_in_cells)
            self.picker_height.setValue(picker_button.height_in_cells)

            self.picker_submit_button.setText("Update")
            self.picker_delete_button.setEnabled(True)
