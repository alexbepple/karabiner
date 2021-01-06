{
  global: {
    check_for_updates_on_startup: true,
    show_in_menu_bar: true,
    show_profile_name_in_menu_bar: true,
  },
  profiles: [
    {
      complex_modifications: {
        parameters: {
          'basic.simultaneous_threshold_milliseconds': 50,
          'basic.to_delayed_action_delay_milliseconds': 500,
          'basic.to_if_alone_timeout_milliseconds': 1000,
          'basic.to_if_held_down_threshold_milliseconds': 50,
          'mouse_motion_to_scroll.speed': 100,
        },
        rules: [
          {
            description: 'option+j => page_down',
            manipulators: [{
              from: { key_code: 'j', modifiers: { mandatory: ['left_option'] } },
              to: [{ key_code: 'page_down' }],
              type: 'basic',
            }],
          },
          {
            description: 'option+k => page_up',
            manipulators: [{
              from: { key_code: 'k', modifiers: { mandatory: ['left_option'] } },
              to: [{ key_code: 'page_up' }],
              type: 'basic',
            }],
          },
          {
            description: 'Citrix: K380 fn + right',
            manipulators: [
              {
                conditions: [{
                  bundle_identifiers: ['^com\\.citrix\\.receiver\\.icaviewer\\.mac$'],
                  type: 'frontmost_application_if',
                }],
                from: {
                  key_code: 'right_arrow',
                  modifiers: { mandatory: ['left_shift', 'left_option'], optional: ['left_control'] },
                },
                to: [{ key_code: 'end' }],
                type: 'basic',
              },
            ],
          },
          {
            description: 'Citrix: K380 fn + left',
            manipulators: [
              {
                conditions: [
                  {
                    bundle_identifiers: [
                      '^com\\.citrix\\.receiver\\.icaviewer\\.mac$',
                    ],
                    type: 'frontmost_application_if',
                  },
                ],
                from: {
                  key_code: 'left_arrow',
                  modifiers: {
                    mandatory: [
                      'left_shift',
                      'left_option',
                    ],
                    optional: [
                      'left_control',
                    ],
                  },
                },
                to: [
                  {
                    key_code: 'home',
                  },
                ],
                type: 'basic',
              },
            ],
          },
          {
            description: 'Citrix: Left Cmd = Left Alt + Left Cmd (coupled with Citrix setting for Alt)',
            manipulators: [
              {
                conditions: [
                  {
                    bundle_identifiers: [
                      '^com\\.citrix\\.receiver\\.icaviewer\\.mac$',
                    ],
                    type: 'frontmost_application_if',
                  },
                ],
                from: {
                  key_code: 'left_command',
                },
                to: [
                  {
                    key_code: 'left_command',
                    modifiers: [
                      'left_option',
                    ],
                  },
                ],
                type: 'basic',
              },
            ],
          },
          {
            description: 'caps_lock to left_option (escape if alone)',
            manipulators: [
              {
                from: {
                  key_code: 'caps_lock',
                  modifiers: {
                    optional: [
                      'any',
                    ],
                  },
                },
                to: [
                  {
                    hold_down_milliseconds: 2,
                    key_code: 'left_option',
                    lazy: true,
                  },
                ],
                to_if_alone: [
                  {
                    key_code: 'escape',
                  },
                ],
                type: 'basic',
              },
            ],
          },
          {
            description: 'ö => option, if held down',
            manipulators: [
              {
                from: {
                  key_code: 'semicolon',
                },
                to_if_alone: [
                  {
                    key_code: 'semicolon',
                  },
                ],
                to_if_held_down: [
                  {
                    key_code: 'left_option',
                  },
                ],
                type: 'basic',
              },
            ],
          },
        ],
      },
      devices: [
        {
          disable_built_in_keyboard_if_exists: false,
          fn_function_keys: [],
          identifiers: {
            is_keyboard: true,
            is_pointing_device: false,
            product_id: 45890,
            vendor_id: 1133,
          },
          ignore: false,
          manipulate_caps_lock_led: false,
          simple_modifications: [],
        },
        {
          disable_built_in_keyboard_if_exists: false,
          fn_function_keys: [],
          identifiers: {
            is_keyboard: true,
            is_pointing_device: false,
            product_id: 632,
            vendor_id: 1452,
          },
          ignore: false,
          manipulate_caps_lock_led: true,
          simple_modifications: [],
        },
        {
          disable_built_in_keyboard_if_exists: false,
          fn_function_keys: [],
          identifiers: {
            is_keyboard: true,
            is_pointing_device: false,
            product_id: 34304,
            vendor_id: 1452,
          },
          ignore: false,
          manipulate_caps_lock_led: true,
          simple_modifications: [],
        },
      ],
      fn_function_keys: [
        {
          from: {
            key_code: 'f1',
          },
          to: {
            consumer_key_code: 'display_brightness_decrement',
          },
        },
        {
          from: {
            key_code: 'f2',
          },
          to: {
            consumer_key_code: 'display_brightness_increment',
          },
        },
        {
          from: {
            key_code: 'f3',
          },
          to: {
            key_code: 'mission_control',
          },
        },
        {
          from: {
            key_code: 'f4',
          },
          to: {
            key_code: 'launchpad',
          },
        },
        {
          from: {
            key_code: 'f5',
          },
          to: {
            key_code: 'illumination_decrement',
          },
        },
        {
          from: {
            key_code: 'f6',
          },
          to: {
            key_code: 'illumination_increment',
          },
        },
        {
          from: {
            key_code: 'f7',
          },
          to: {
            consumer_key_code: 'rewind',
          },
        },
        {
          from: {
            key_code: 'f8',
          },
          to: {
            consumer_key_code: 'play_or_pause',
          },
        },
        {
          from: {
            key_code: 'f9',
          },
          to: {
            consumer_key_code: 'fastforward',
          },
        },
        {
          from: {
            key_code: 'f10',
          },
          to: {
            consumer_key_code: 'mute',
          },
        },
        {
          from: {
            key_code: 'f11',
          },
          to: {
            consumer_key_code: 'volume_decrement',
          },
        },
        {
          from: {
            key_code: 'f12',
          },
          to: {
            consumer_key_code: 'volume_increment',
          },
        },
      ],
      name: 'Default',
      parameters: {
        delay_milliseconds_before_open_device: 1000,
      },
      selected: true,
      simple_modifications: [],
      virtual_hid_keyboard: {
        caps_lock_delay_milliseconds: 0,
        country_code: 0,
        keyboard_type: '',
        mouse_key_xy_scale: 100,
      },
    },
    {
      complex_modifications: {
        parameters: {
          'basic.simultaneous_threshold_milliseconds': 50,
          'basic.to_delayed_action_delay_milliseconds': 500,
          'basic.to_if_alone_timeout_milliseconds': 1000,
          'basic.to_if_held_down_threshold_milliseconds': 500,
          'mouse_motion_to_scroll.speed': 100,
        },
        rules: [],
      },
      devices: [
        {
          disable_built_in_keyboard_if_exists: false,
          fn_function_keys: [],
          identifiers: {
            is_keyboard: true,
            is_pointing_device: false,
            product_id: 45890,
            vendor_id: 1133,
          },
          ignore: true,
          manipulate_caps_lock_led: false,
          simple_modifications: [],
        },
      ],
      fn_function_keys: [
        {
          from: {
            key_code: 'f1',
          },
          to: {
            consumer_key_code: 'display_brightness_decrement',
          },
        },
        {
          from: {
            key_code: 'f2',
          },
          to: {
            consumer_key_code: 'display_brightness_increment',
          },
        },
        {
          from: {
            key_code: 'f3',
          },
          to: {
            key_code: 'mission_control',
          },
        },
        {
          from: {
            key_code: 'f4',
          },
          to: {
            key_code: 'launchpad',
          },
        },
        {
          from: {
            key_code: 'f5',
          },
          to: {
            key_code: 'illumination_decrement',
          },
        },
        {
          from: {
            key_code: 'f6',
          },
          to: {
            key_code: 'illumination_increment',
          },
        },
        {
          from: {
            key_code: 'f7',
          },
          to: {
            consumer_key_code: 'rewind',
          },
        },
        {
          from: {
            key_code: 'f8',
          },
          to: {
            consumer_key_code: 'play_or_pause',
          },
        },
        {
          from: {
            key_code: 'f9',
          },
          to: {
            consumer_key_code: 'fast_forward',
          },
        },
        {
          from: {
            key_code: 'f10',
          },
          to: {
            consumer_key_code: 'mute',
          },
        },
        {
          from: {
            key_code: 'f11',
          },
          to: {
            consumer_key_code: 'volume_decrement',
          },
        },
        {
          from: {
            key_code: 'f12',
          },
          to: {
            consumer_key_code: 'volume_increment',
          },
        },
      ],
      name: 'no K380',
      parameters: {
        delay_milliseconds_before_open_device: 1000,
      },
      selected: false,
      simple_modifications: [],
      virtual_hid_keyboard: {
        country_code: 0,
        mouse_key_xy_scale: 100,
      },
    },
  ],
}
