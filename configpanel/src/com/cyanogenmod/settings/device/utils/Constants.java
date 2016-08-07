/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings.device.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

import org.cyanogenmod.internal.util.FileUtils;

import java.util.HashMap;
import java.util.Map;

public class Constants {

    // Preference keys
    private static final String TOUCHSCREEN_SWIPE_UP_KEY = "touchscreen_gesture_up";
    private static final String TOUCHSCREEN_SWIPE_DOWN_KEY = "touchscreen_gesture_down";
    private static final String TOUCHSCREEN_SWIPE_RIGHT_KEY = "touchscreen_gesture_right";
    private static final String TOUCHSCREEN_SWIPE_LEFT_KEY = "touchscreen_gesture_left";

    // Gesture node default values
    private static final boolean TOUCHSCREEN_SWIPE_UP_DEFAULT = true;
    private static final boolean TOUCHSCREEN_SWIPE_DOWN_DEFAULT = true;
    private static final boolean TOUCHSCREEN_SWIPE_RIGHT_DEFAULT = true;
    private static final boolean TOUCHSCREEN_SWIPE_LEF_DEFAULT = true;

    // Holds <preference_key> -> <default_values> mapping
    private static final Map<String, Object> sNodeDefaultMap = new HashMap<>();

    public static final String[] sGesturePrefKeys = {
         TOUCHSCREEN_SWIPE_UP_KEY,
         TOUCHSCREEN_SWIPE_DOWN_KEY,
         TOUCHSCREEN_SWIPE_RIGHT_KEY,
         TOUCHSCREEN_SWIPE_LEFT_KEY
    };

    static {
        sNodeDefaultMap.put(TOUCHSCREEN_SWIPE_UP_KEY, TOUCHSCREEN_SWIPE_UP_DEFAULT);
        sNodeDefaultMap.put(TOUCHSCREEN_SWIPE_DOWN_KEY, TOUCHSCREEN_SWIPE_DOWN_KEY);
        sNodeDefaultMap.put(TOUCHSCREEN_SWIPE_RIGHT_KEY, TOUCHSCREEN_SWIPE_RIGHT_KEY);
        sNodeDefaultMap.put(TOUCHSCREEN_SWIPE_LEFT_KEY, TOUCHSCREEN_SWIPE_LEFT_KEY);
    }

    public static void setGestureEnabled(boolean state, String gesture) {
        String[] cmd = null;

        switch (gesture) {
            case TOUCHSCREEN_SWIPE_UP_KEY:
                cmd = new String[] { "up=" };
                break;
            case TOUCHSCREEN_SWIPE_DOWN_KEY:
                cmd = new String[] { "down="};
                break;
            case TOUCHSCREEN_SWIPE_RIGHT_KEY:
                cmd = new String[] { "right=" };
                break;
            case TOUCHSCREEN_SWIPE_LEFT_KEY:
                cmd = new String[] { "left=" };
                break;
            default:
                return;
        }

        String enabled = state ? "true" : "false";
        StringBuilder builder = new StringBuilder();
        for (String i : cmd) {
            if (builder.length() > 0) {
                builder.append(',');
            }
            builder.append(i);
            builder.append(enabled);
        }
    }

    public static boolean getGestureEnabled(String gesture) {
        long state = Long.decode(stateStr);
        long hex = 0x00;

        switch (gesture) {
            case TOUCHSCREEN_SWIPE_UP_KEY:
                hex = 0x80;
                break;
            case TOUCHSCREEN_SWIPE_DOWN_KEY:
                hex = 0x40;
                break;
            case TOUCHSCREEN_SWIPE_RIGHT_KEY:
                hex = 0x20;
                break;
            case TOUCHSCREEN_SWIPE_LEFT_KEY:
                hex = 0x10;
                break;
            default:
                return false;
        }

        return (state & hex) == hex;
    }

    public static boolean isPreferenceEnabled(Context context, String key) {
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
        return preferences.getBoolean(key, (Boolean) sNodeDefaultMap.get(key));
    }

    public static String getPreferenceString(Context context, String key) {
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
        return preferences.getString(key, (String) sNodeDefaultMap.get(key));
    }
}
