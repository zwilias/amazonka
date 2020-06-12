{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Message
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.Message where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | /See:/ 'message' smart constructor.
data Message = Message'{_mSilentPush ::
                        !(Maybe Bool),
                        _mImageIconURL :: !(Maybe Text),
                        _mRawContent :: !(Maybe Text),
                        _mBody :: !(Maybe Text),
                        _mImageSmallIconURL :: !(Maybe Text),
                        _mJSONBody :: !(Maybe Text), _mURL :: !(Maybe Text),
                        _mAction :: !(Maybe Action),
                        _mImageURL :: !(Maybe Text),
                        _mMediaURL :: !(Maybe Text),
                        _mTitle :: !(Maybe Text)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mSilentPush' - Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases. 
--
-- * 'mImageIconURL' - The URL that points to the icon image for the push notification icon, for example, the app icon.
--
-- * 'mRawContent' - The Raw JSON formatted string to be used as the payload. This value overrides the message.
--
-- * 'mBody' - The message body. Can include up to 140 characters.
--
-- * 'mImageSmallIconURL' - The URL that points to the small icon image for the push notification icon, for example, the app icon.
--
-- * 'mJSONBody' - The JSON payload used for a silent push.
--
-- * 'mURL' - The URL to open in the user's mobile browser. Used if the value for Action is URL.
--
-- * 'mAction' - The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify.
--
-- * 'mImageURL' - The URL that points to an image used in the push notification.
--
-- * 'mMediaURL' - The URL that points to the media resource, for example a .mp4 or .gif file.
--
-- * 'mTitle' - The message title that displays above the message on the user's device.
message
    :: Message
message
  = Message'{_mSilentPush = Nothing,
             _mImageIconURL = Nothing, _mRawContent = Nothing,
             _mBody = Nothing, _mImageSmallIconURL = Nothing,
             _mJSONBody = Nothing, _mURL = Nothing,
             _mAction = Nothing, _mImageURL = Nothing,
             _mMediaURL = Nothing, _mTitle = Nothing}

-- | Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases. 
mSilentPush :: Lens' Message (Maybe Bool)
mSilentPush = lens _mSilentPush (\ s a -> s{_mSilentPush = a})

-- | The URL that points to the icon image for the push notification icon, for example, the app icon.
mImageIconURL :: Lens' Message (Maybe Text)
mImageIconURL = lens _mImageIconURL (\ s a -> s{_mImageIconURL = a})

-- | The Raw JSON formatted string to be used as the payload. This value overrides the message.
mRawContent :: Lens' Message (Maybe Text)
mRawContent = lens _mRawContent (\ s a -> s{_mRawContent = a})

-- | The message body. Can include up to 140 characters.
mBody :: Lens' Message (Maybe Text)
mBody = lens _mBody (\ s a -> s{_mBody = a})

-- | The URL that points to the small icon image for the push notification icon, for example, the app icon.
mImageSmallIconURL :: Lens' Message (Maybe Text)
mImageSmallIconURL = lens _mImageSmallIconURL (\ s a -> s{_mImageSmallIconURL = a})

-- | The JSON payload used for a silent push.
mJSONBody :: Lens' Message (Maybe Text)
mJSONBody = lens _mJSONBody (\ s a -> s{_mJSONBody = a})

-- | The URL to open in the user's mobile browser. Used if the value for Action is URL.
mURL :: Lens' Message (Maybe Text)
mURL = lens _mURL (\ s a -> s{_mURL = a})

-- | The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify.
mAction :: Lens' Message (Maybe Action)
mAction = lens _mAction (\ s a -> s{_mAction = a})

-- | The URL that points to an image used in the push notification.
mImageURL :: Lens' Message (Maybe Text)
mImageURL = lens _mImageURL (\ s a -> s{_mImageURL = a})

-- | The URL that points to the media resource, for example a .mp4 or .gif file.
mMediaURL :: Lens' Message (Maybe Text)
mMediaURL = lens _mMediaURL (\ s a -> s{_mMediaURL = a})

-- | The message title that displays above the message on the user's device.
mTitle :: Lens' Message (Maybe Text)
mTitle = lens _mTitle (\ s a -> s{_mTitle = a})

instance FromJSON Message where
        parseJSON
          = withObject "Message"
              (\ x ->
                 Message' <$>
                   (x .:? "SilentPush") <*> (x .:? "ImageIconUrl") <*>
                     (x .:? "RawContent")
                     <*> (x .:? "Body")
                     <*> (x .:? "ImageSmallIconUrl")
                     <*> (x .:? "JsonBody")
                     <*> (x .:? "Url")
                     <*> (x .:? "Action")
                     <*> (x .:? "ImageUrl")
                     <*> (x .:? "MediaUrl")
                     <*> (x .:? "Title"))

instance Hashable Message where

instance NFData Message where

instance ToJSON Message where
        toJSON Message'{..}
          = object
              (catMaybes
                 [("SilentPush" .=) <$> _mSilentPush,
                  ("ImageIconUrl" .=) <$> _mImageIconURL,
                  ("RawContent" .=) <$> _mRawContent,
                  ("Body" .=) <$> _mBody,
                  ("ImageSmallIconUrl" .=) <$> _mImageSmallIconURL,
                  ("JsonBody" .=) <$> _mJSONBody, ("Url" .=) <$> _mURL,
                  ("Action" .=) <$> _mAction,
                  ("ImageUrl" .=) <$> _mImageURL,
                  ("MediaUrl" .=) <$> _mMediaURL,
                  ("Title" .=) <$> _mTitle])
