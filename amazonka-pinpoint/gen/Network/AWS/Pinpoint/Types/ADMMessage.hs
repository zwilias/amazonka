{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ADMMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ADMMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | ADM Message.
--
-- /See:/ 'aDMMessage' smart constructor.
data ADMMessage = ADMMessage'{_admmSubstitutions ::
                              !(Maybe (Map Text [Text])),
                              _admmExpiresAfter :: !(Maybe Text),
                              _admmMD5 :: !(Maybe Text),
                              _admmSilentPush :: !(Maybe Bool),
                              _admmImageIconURL :: !(Maybe Text),
                              _admmRawContent :: !(Maybe Text),
                              _admmData :: !(Maybe (Map Text Text)),
                              _admmSmallImageIconURL :: !(Maybe Text),
                              _admmBody :: !(Maybe Text),
                              _admmURL :: !(Maybe Text),
                              _admmSound :: !(Maybe Text),
                              _admmAction :: !(Maybe Action),
                              _admmImageURL :: !(Maybe Text),
                              _admmConsolidationKey :: !(Maybe Text),
                              _admmTitle :: !(Maybe Text),
                              _admmIconReference :: !(Maybe Text)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ADMMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admmSubstitutions' - Default message substitutions. Can be overridden by individual address substitutions.
--
-- * 'admmExpiresAfter' - Optional. Number of seconds ADM should retain the message if the device is offline
--
-- * 'admmMD5' - Optional. Base-64-encoded MD5 checksum of the data parameter. Used to verify data integrity
--
-- * 'admmSilentPush' - Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
--
-- * 'admmImageIconURL' - The URL that points to an image used as the large icon to the notification content view.
--
-- * 'admmRawContent' - The Raw JSON formatted string to be used as the payload. This value overrides the message.
--
-- * 'admmData' - The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
--
-- * 'admmSmallImageIconURL' - The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
--
-- * 'admmBody' - The message body of the notification, the email body or the text message.
--
-- * 'admmURL' - The URL to open in the user's mobile browser. Used if the value for Action is URL.
--
-- * 'admmSound' - Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
--
-- * 'admmAction' - The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
--
-- * 'admmImageURL' - The URL that points to an image used in the push notification.
--
-- * 'admmConsolidationKey' - Optional. Arbitrary string used to indicate multiple messages are logically the same and that ADM is allowed to drop previously enqueued messages in favor of this one.
--
-- * 'admmTitle' - The message title that displays above the message on the user's device.
--
-- * 'admmIconReference' - The icon image name of the asset saved in your application.
aDMMessage
    :: ADMMessage
aDMMessage
  = ADMMessage'{_admmSubstitutions = Nothing,
                _admmExpiresAfter = Nothing, _admmMD5 = Nothing,
                _admmSilentPush = Nothing,
                _admmImageIconURL = Nothing,
                _admmRawContent = Nothing, _admmData = Nothing,
                _admmSmallImageIconURL = Nothing,
                _admmBody = Nothing, _admmURL = Nothing,
                _admmSound = Nothing, _admmAction = Nothing,
                _admmImageURL = Nothing,
                _admmConsolidationKey = Nothing,
                _admmTitle = Nothing, _admmIconReference = Nothing}

-- | Default message substitutions. Can be overridden by individual address substitutions.
admmSubstitutions :: Lens' ADMMessage (HashMap Text [Text])
admmSubstitutions = lens _admmSubstitutions (\ s a -> s{_admmSubstitutions = a}) . _Default . _Map

-- | Optional. Number of seconds ADM should retain the message if the device is offline
admmExpiresAfter :: Lens' ADMMessage (Maybe Text)
admmExpiresAfter = lens _admmExpiresAfter (\ s a -> s{_admmExpiresAfter = a})

-- | Optional. Base-64-encoded MD5 checksum of the data parameter. Used to verify data integrity
admmMD5 :: Lens' ADMMessage (Maybe Text)
admmMD5 = lens _admmMD5 (\ s a -> s{_admmMD5 = a})

-- | Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
admmSilentPush :: Lens' ADMMessage (Maybe Bool)
admmSilentPush = lens _admmSilentPush (\ s a -> s{_admmSilentPush = a})

-- | The URL that points to an image used as the large icon to the notification content view.
admmImageIconURL :: Lens' ADMMessage (Maybe Text)
admmImageIconURL = lens _admmImageIconURL (\ s a -> s{_admmImageIconURL = a})

-- | The Raw JSON formatted string to be used as the payload. This value overrides the message.
admmRawContent :: Lens' ADMMessage (Maybe Text)
admmRawContent = lens _admmRawContent (\ s a -> s{_admmRawContent = a})

-- | The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
admmData :: Lens' ADMMessage (HashMap Text Text)
admmData = lens _admmData (\ s a -> s{_admmData = a}) . _Default . _Map

-- | The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
admmSmallImageIconURL :: Lens' ADMMessage (Maybe Text)
admmSmallImageIconURL = lens _admmSmallImageIconURL (\ s a -> s{_admmSmallImageIconURL = a})

-- | The message body of the notification, the email body or the text message.
admmBody :: Lens' ADMMessage (Maybe Text)
admmBody = lens _admmBody (\ s a -> s{_admmBody = a})

-- | The URL to open in the user's mobile browser. Used if the value for Action is URL.
admmURL :: Lens' ADMMessage (Maybe Text)
admmURL = lens _admmURL (\ s a -> s{_admmURL = a})

-- | Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
admmSound :: Lens' ADMMessage (Maybe Text)
admmSound = lens _admmSound (\ s a -> s{_admmSound = a})

-- | The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
admmAction :: Lens' ADMMessage (Maybe Action)
admmAction = lens _admmAction (\ s a -> s{_admmAction = a})

-- | The URL that points to an image used in the push notification.
admmImageURL :: Lens' ADMMessage (Maybe Text)
admmImageURL = lens _admmImageURL (\ s a -> s{_admmImageURL = a})

-- | Optional. Arbitrary string used to indicate multiple messages are logically the same and that ADM is allowed to drop previously enqueued messages in favor of this one.
admmConsolidationKey :: Lens' ADMMessage (Maybe Text)
admmConsolidationKey = lens _admmConsolidationKey (\ s a -> s{_admmConsolidationKey = a})

-- | The message title that displays above the message on the user's device.
admmTitle :: Lens' ADMMessage (Maybe Text)
admmTitle = lens _admmTitle (\ s a -> s{_admmTitle = a})

-- | The icon image name of the asset saved in your application.
admmIconReference :: Lens' ADMMessage (Maybe Text)
admmIconReference = lens _admmIconReference (\ s a -> s{_admmIconReference = a})

instance Hashable ADMMessage where

instance NFData ADMMessage where

instance ToJSON ADMMessage where
        toJSON ADMMessage'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _admmSubstitutions,
                  ("ExpiresAfter" .=) <$> _admmExpiresAfter,
                  ("MD5" .=) <$> _admmMD5,
                  ("SilentPush" .=) <$> _admmSilentPush,
                  ("ImageIconUrl" .=) <$> _admmImageIconURL,
                  ("RawContent" .=) <$> _admmRawContent,
                  ("Data" .=) <$> _admmData,
                  ("SmallImageIconUrl" .=) <$> _admmSmallImageIconURL,
                  ("Body" .=) <$> _admmBody, ("Url" .=) <$> _admmURL,
                  ("Sound" .=) <$> _admmSound,
                  ("Action" .=) <$> _admmAction,
                  ("ImageUrl" .=) <$> _admmImageURL,
                  ("ConsolidationKey" .=) <$> _admmConsolidationKey,
                  ("Title" .=) <$> _admmTitle,
                  ("IconReference" .=) <$> _admmIconReference])
