{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.BaiduMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.BaiduMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | Baidu Message.
--
-- /See:/ 'baiduMessage' smart constructor.
data BaiduMessage = BaiduMessage'{_bmSubstitutions ::
                                  !(Maybe (Map Text [Text])),
                                  _bmSilentPush :: !(Maybe Bool),
                                  _bmImageIconURL :: !(Maybe Text),
                                  _bmRawContent :: !(Maybe Text),
                                  _bmData :: !(Maybe (Map Text Text)),
                                  _bmSmallImageIconURL :: !(Maybe Text),
                                  _bmBody :: !(Maybe Text),
                                  _bmURL :: !(Maybe Text),
                                  _bmSound :: !(Maybe Text),
                                  _bmAction :: !(Maybe Action),
                                  _bmImageURL :: !(Maybe Text),
                                  _bmTitle :: !(Maybe Text),
                                  _bmIconReference :: !(Maybe Text)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BaiduMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bmSubstitutions' - Default message substitutions. Can be overridden by individual address substitutions.
--
-- * 'bmSilentPush' - Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
--
-- * 'bmImageIconURL' - The URL that points to an image used as the large icon to the notification content view.
--
-- * 'bmRawContent' - The Raw JSON formatted string to be used as the payload. This value overrides the message.
--
-- * 'bmData' - The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
--
-- * 'bmSmallImageIconURL' - The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
--
-- * 'bmBody' - The message body of the notification, the email body or the text message.
--
-- * 'bmURL' - The URL to open in the user's mobile browser. Used if the value for Action is URL.
--
-- * 'bmSound' - Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
--
-- * 'bmAction' - The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
--
-- * 'bmImageURL' - The URL that points to an image used in the push notification.
--
-- * 'bmTitle' - The message title that displays above the message on the user's device.
--
-- * 'bmIconReference' - The icon image name of the asset saved in your application.
baiduMessage
    :: BaiduMessage
baiduMessage
  = BaiduMessage'{_bmSubstitutions = Nothing,
                  _bmSilentPush = Nothing, _bmImageIconURL = Nothing,
                  _bmRawContent = Nothing, _bmData = Nothing,
                  _bmSmallImageIconURL = Nothing, _bmBody = Nothing,
                  _bmURL = Nothing, _bmSound = Nothing,
                  _bmAction = Nothing, _bmImageURL = Nothing,
                  _bmTitle = Nothing, _bmIconReference = Nothing}

-- | Default message substitutions. Can be overridden by individual address substitutions.
bmSubstitutions :: Lens' BaiduMessage (HashMap Text [Text])
bmSubstitutions = lens _bmSubstitutions (\ s a -> s{_bmSubstitutions = a}) . _Default . _Map

-- | Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
bmSilentPush :: Lens' BaiduMessage (Maybe Bool)
bmSilentPush = lens _bmSilentPush (\ s a -> s{_bmSilentPush = a})

-- | The URL that points to an image used as the large icon to the notification content view.
bmImageIconURL :: Lens' BaiduMessage (Maybe Text)
bmImageIconURL = lens _bmImageIconURL (\ s a -> s{_bmImageIconURL = a})

-- | The Raw JSON formatted string to be used as the payload. This value overrides the message.
bmRawContent :: Lens' BaiduMessage (Maybe Text)
bmRawContent = lens _bmRawContent (\ s a -> s{_bmRawContent = a})

-- | The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
bmData :: Lens' BaiduMessage (HashMap Text Text)
bmData = lens _bmData (\ s a -> s{_bmData = a}) . _Default . _Map

-- | The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
bmSmallImageIconURL :: Lens' BaiduMessage (Maybe Text)
bmSmallImageIconURL = lens _bmSmallImageIconURL (\ s a -> s{_bmSmallImageIconURL = a})

-- | The message body of the notification, the email body or the text message.
bmBody :: Lens' BaiduMessage (Maybe Text)
bmBody = lens _bmBody (\ s a -> s{_bmBody = a})

-- | The URL to open in the user's mobile browser. Used if the value for Action is URL.
bmURL :: Lens' BaiduMessage (Maybe Text)
bmURL = lens _bmURL (\ s a -> s{_bmURL = a})

-- | Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
bmSound :: Lens' BaiduMessage (Maybe Text)
bmSound = lens _bmSound (\ s a -> s{_bmSound = a})

-- | The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
bmAction :: Lens' BaiduMessage (Maybe Action)
bmAction = lens _bmAction (\ s a -> s{_bmAction = a})

-- | The URL that points to an image used in the push notification.
bmImageURL :: Lens' BaiduMessage (Maybe Text)
bmImageURL = lens _bmImageURL (\ s a -> s{_bmImageURL = a})

-- | The message title that displays above the message on the user's device.
bmTitle :: Lens' BaiduMessage (Maybe Text)
bmTitle = lens _bmTitle (\ s a -> s{_bmTitle = a})

-- | The icon image name of the asset saved in your application.
bmIconReference :: Lens' BaiduMessage (Maybe Text)
bmIconReference = lens _bmIconReference (\ s a -> s{_bmIconReference = a})

instance Hashable BaiduMessage where

instance NFData BaiduMessage where

instance ToJSON BaiduMessage where
        toJSON BaiduMessage'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _bmSubstitutions,
                  ("SilentPush" .=) <$> _bmSilentPush,
                  ("ImageIconUrl" .=) <$> _bmImageIconURL,
                  ("RawContent" .=) <$> _bmRawContent,
                  ("Data" .=) <$> _bmData,
                  ("SmallImageIconUrl" .=) <$> _bmSmallImageIconURL,
                  ("Body" .=) <$> _bmBody, ("Url" .=) <$> _bmURL,
                  ("Sound" .=) <$> _bmSound,
                  ("Action" .=) <$> _bmAction,
                  ("ImageUrl" .=) <$> _bmImageURL,
                  ("Title" .=) <$> _bmTitle,
                  ("IconReference" .=) <$> _bmIconReference])
