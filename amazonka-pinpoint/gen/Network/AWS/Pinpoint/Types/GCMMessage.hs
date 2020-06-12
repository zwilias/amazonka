{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.GCMMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.GCMMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | GCM Message.
--
-- /See:/ 'gcmMessage' smart constructor.
data GCMMessage = GCMMessage'{_gmSubstitutions ::
                              !(Maybe (Map Text [Text])),
                              _gmSilentPush :: !(Maybe Bool),
                              _gmImageIconURL :: !(Maybe Text),
                              _gmPriority :: !(Maybe Text),
                              _gmRawContent :: !(Maybe Text),
                              _gmData :: !(Maybe (Map Text Text)),
                              _gmRestrictedPackageName :: !(Maybe Text),
                              _gmSmallImageIconURL :: !(Maybe Text),
                              _gmBody :: !(Maybe Text),
                              _gmTimeToLive :: !(Maybe Int),
                              _gmURL :: !(Maybe Text),
                              _gmSound :: !(Maybe Text),
                              _gmAction :: !(Maybe Action),
                              _gmCollapseKey :: !(Maybe Text),
                              _gmImageURL :: !(Maybe Text),
                              _gmTitle :: !(Maybe Text),
                              _gmIconReference :: !(Maybe Text)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GCMMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmSubstitutions' - Default message substitutions. Can be overridden by individual address substitutions.
--
-- * 'gmSilentPush' - Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
--
-- * 'gmImageIconURL' - The URL that points to an image used as the large icon to the notification content view.
--
-- * 'gmPriority' - The message priority. Amazon Pinpoint uses this value to set the FCM or GCM priority parameter when it sends the message. Accepts the following values: "Normal" - Messages might be delayed. Delivery is optimized for battery usage on the receiving device. Use normal priority unless immediate delivery is required. "High" - Messages are sent immediately and might wake a sleeping device. The equivalent values for APNs messages are "5" and "10". Amazon Pinpoint accepts these values here and converts them. For more information, see About FCM Messages in the Firebase documentation.
--
-- * 'gmRawContent' - The Raw JSON formatted string to be used as the payload. This value overrides the message.
--
-- * 'gmData' - The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
--
-- * 'gmRestrictedPackageName' - This parameter specifies the package name of the application where the registration tokens must match in order to receive the message.
--
-- * 'gmSmallImageIconURL' - The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
--
-- * 'gmBody' - The message body of the notification, the email body or the text message.
--
-- * 'gmTimeToLive' - The length of time (in seconds) that FCM or GCM stores and attempts to deliver the message. If unspecified, the value defaults to the maximum, which is 2,419,200 seconds (28 days). Amazon Pinpoint uses this value to set the FCM or GCM time_to_live parameter.
--
-- * 'gmURL' - The URL to open in the user's mobile browser. Used if the value for Action is URL.
--
-- * 'gmSound' - Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
--
-- * 'gmAction' - The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
--
-- * 'gmCollapseKey' - This parameter identifies a group of messages (e.g., with collapse_key: "Updates Available") that can be collapsed, so that only the last message gets sent when delivery can be resumed. This is intended to avoid sending too many of the same messages when the device comes back online or becomes active.
--
-- * 'gmImageURL' - The URL that points to an image used in the push notification.
--
-- * 'gmTitle' - The message title that displays above the message on the user's device.
--
-- * 'gmIconReference' - The icon image name of the asset saved in your application.
gcmMessage
    :: GCMMessage
gcmMessage
  = GCMMessage'{_gmSubstitutions = Nothing,
                _gmSilentPush = Nothing, _gmImageIconURL = Nothing,
                _gmPriority = Nothing, _gmRawContent = Nothing,
                _gmData = Nothing,
                _gmRestrictedPackageName = Nothing,
                _gmSmallImageIconURL = Nothing, _gmBody = Nothing,
                _gmTimeToLive = Nothing, _gmURL = Nothing,
                _gmSound = Nothing, _gmAction = Nothing,
                _gmCollapseKey = Nothing, _gmImageURL = Nothing,
                _gmTitle = Nothing, _gmIconReference = Nothing}

-- | Default message substitutions. Can be overridden by individual address substitutions.
gmSubstitutions :: Lens' GCMMessage (HashMap Text [Text])
gmSubstitutions = lens _gmSubstitutions (\ s a -> s{_gmSubstitutions = a}) . _Default . _Map

-- | Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
gmSilentPush :: Lens' GCMMessage (Maybe Bool)
gmSilentPush = lens _gmSilentPush (\ s a -> s{_gmSilentPush = a})

-- | The URL that points to an image used as the large icon to the notification content view.
gmImageIconURL :: Lens' GCMMessage (Maybe Text)
gmImageIconURL = lens _gmImageIconURL (\ s a -> s{_gmImageIconURL = a})

-- | The message priority. Amazon Pinpoint uses this value to set the FCM or GCM priority parameter when it sends the message. Accepts the following values: "Normal" - Messages might be delayed. Delivery is optimized for battery usage on the receiving device. Use normal priority unless immediate delivery is required. "High" - Messages are sent immediately and might wake a sleeping device. The equivalent values for APNs messages are "5" and "10". Amazon Pinpoint accepts these values here and converts them. For more information, see About FCM Messages in the Firebase documentation.
gmPriority :: Lens' GCMMessage (Maybe Text)
gmPriority = lens _gmPriority (\ s a -> s{_gmPriority = a})

-- | The Raw JSON formatted string to be used as the payload. This value overrides the message.
gmRawContent :: Lens' GCMMessage (Maybe Text)
gmRawContent = lens _gmRawContent (\ s a -> s{_gmRawContent = a})

-- | The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
gmData :: Lens' GCMMessage (HashMap Text Text)
gmData = lens _gmData (\ s a -> s{_gmData = a}) . _Default . _Map

-- | This parameter specifies the package name of the application where the registration tokens must match in order to receive the message.
gmRestrictedPackageName :: Lens' GCMMessage (Maybe Text)
gmRestrictedPackageName = lens _gmRestrictedPackageName (\ s a -> s{_gmRestrictedPackageName = a})

-- | The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
gmSmallImageIconURL :: Lens' GCMMessage (Maybe Text)
gmSmallImageIconURL = lens _gmSmallImageIconURL (\ s a -> s{_gmSmallImageIconURL = a})

-- | The message body of the notification, the email body or the text message.
gmBody :: Lens' GCMMessage (Maybe Text)
gmBody = lens _gmBody (\ s a -> s{_gmBody = a})

-- | The length of time (in seconds) that FCM or GCM stores and attempts to deliver the message. If unspecified, the value defaults to the maximum, which is 2,419,200 seconds (28 days). Amazon Pinpoint uses this value to set the FCM or GCM time_to_live parameter.
gmTimeToLive :: Lens' GCMMessage (Maybe Int)
gmTimeToLive = lens _gmTimeToLive (\ s a -> s{_gmTimeToLive = a})

-- | The URL to open in the user's mobile browser. Used if the value for Action is URL.
gmURL :: Lens' GCMMessage (Maybe Text)
gmURL = lens _gmURL (\ s a -> s{_gmURL = a})

-- | Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
gmSound :: Lens' GCMMessage (Maybe Text)
gmSound = lens _gmSound (\ s a -> s{_gmSound = a})

-- | The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
gmAction :: Lens' GCMMessage (Maybe Action)
gmAction = lens _gmAction (\ s a -> s{_gmAction = a})

-- | This parameter identifies a group of messages (e.g., with collapse_key: "Updates Available") that can be collapsed, so that only the last message gets sent when delivery can be resumed. This is intended to avoid sending too many of the same messages when the device comes back online or becomes active.
gmCollapseKey :: Lens' GCMMessage (Maybe Text)
gmCollapseKey = lens _gmCollapseKey (\ s a -> s{_gmCollapseKey = a})

-- | The URL that points to an image used in the push notification.
gmImageURL :: Lens' GCMMessage (Maybe Text)
gmImageURL = lens _gmImageURL (\ s a -> s{_gmImageURL = a})

-- | The message title that displays above the message on the user's device.
gmTitle :: Lens' GCMMessage (Maybe Text)
gmTitle = lens _gmTitle (\ s a -> s{_gmTitle = a})

-- | The icon image name of the asset saved in your application.
gmIconReference :: Lens' GCMMessage (Maybe Text)
gmIconReference = lens _gmIconReference (\ s a -> s{_gmIconReference = a})

instance Hashable GCMMessage where

instance NFData GCMMessage where

instance ToJSON GCMMessage where
        toJSON GCMMessage'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _gmSubstitutions,
                  ("SilentPush" .=) <$> _gmSilentPush,
                  ("ImageIconUrl" .=) <$> _gmImageIconURL,
                  ("Priority" .=) <$> _gmPriority,
                  ("RawContent" .=) <$> _gmRawContent,
                  ("Data" .=) <$> _gmData,
                  ("RestrictedPackageName" .=) <$>
                    _gmRestrictedPackageName,
                  ("SmallImageIconUrl" .=) <$> _gmSmallImageIconURL,
                  ("Body" .=) <$> _gmBody,
                  ("TimeToLive" .=) <$> _gmTimeToLive,
                  ("Url" .=) <$> _gmURL, ("Sound" .=) <$> _gmSound,
                  ("Action" .=) <$> _gmAction,
                  ("CollapseKey" .=) <$> _gmCollapseKey,
                  ("ImageUrl" .=) <$> _gmImageURL,
                  ("Title" .=) <$> _gmTitle,
                  ("IconReference" .=) <$> _gmIconReference])
