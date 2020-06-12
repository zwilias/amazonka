{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | APNS Message.
--
-- /See:/ 'apnsMessage' smart constructor.
data APNSMessage = APNSMessage'{_amSubstitutions ::
                                !(Maybe (Map Text [Text])),
                                _amSilentPush :: !(Maybe Bool),
                                _amPriority :: !(Maybe Text),
                                _amRawContent :: !(Maybe Text),
                                _amData :: !(Maybe (Map Text Text)),
                                _amBody :: !(Maybe Text),
                                _amCategory :: !(Maybe Text),
                                _amTimeToLive :: !(Maybe Int),
                                _amURL :: !(Maybe Text),
                                _amSound :: !(Maybe Text),
                                _amAction :: !(Maybe Action),
                                _amMediaURL :: !(Maybe Text),
                                _amPreferredAuthenticationMethod ::
                                !(Maybe Text),
                                _amBadge :: !(Maybe Int),
                                _amTitle :: !(Maybe Text),
                                _amThreadId :: !(Maybe Text),
                                _amCollapseId :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APNSMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amSubstitutions' - Default message substitutions. Can be overridden by individual address substitutions.
--
-- * 'amSilentPush' - Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
--
-- * 'amPriority' - The message priority. Amazon Pinpoint uses this value to set the apns-priority request header when it sends the message to APNs. Accepts the following values: "5" - Low priority. Messages might be delayed, delivered in groups, and throttled. "10" - High priority. Messages are sent immediately. High priority messages must cause an alert, sound, or badge on the receiving device. The default value is "10". The equivalent values for FCM or GCM messages are "normal" and "high". Amazon Pinpoint accepts these values for APNs messages and converts them. For more information about the apns-priority parameter, see Communicating with APNs in the APNs Local and Remote Notification Programming Guide.
--
-- * 'amRawContent' - The Raw JSON formatted string to be used as the payload. This value overrides the message.
--
-- * 'amData' - The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
--
-- * 'amBody' - The message body of the notification, the email body or the text message.
--
-- * 'amCategory' - Provide this key with a string value that represents the notification's type. This value corresponds to the value in the identifier property of one of your app's registered categories.
--
-- * 'amTimeToLive' - The length of time (in seconds) that APNs stores and attempts to deliver the message. If the value is 0, APNs does not store the message or attempt to deliver it more than once. Amazon Pinpoint uses this value to set the apns-expiration request header when it sends the message to APNs.
--
-- * 'amURL' - The URL to open in the user's mobile browser. Used if the value for Action is URL.
--
-- * 'amSound' - Include this key when you want the system to play a sound. The value of this key is the name of a sound file in your app's main bundle or in the Library/Sounds folder of your app's data container. If the sound file cannot be found, or if you specify defaultfor the value, the system plays the default alert sound.
--
-- * 'amAction' - The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
--
-- * 'amMediaURL' - The URL that points to a video used in the push notification.
--
-- * 'amPreferredAuthenticationMethod' - The preferred authentication method, either "CERTIFICATE" or "TOKEN"
--
-- * 'amBadge' - Include this key when you want the system to modify the badge of your app icon. If this key is not included in the dictionary, the badge is not changed. To remove the badge, set the value of this key to 0.
--
-- * 'amTitle' - The message title that displays above the message on the user's device.
--
-- * 'amThreadId' - Provide this key with a string value that represents the app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.
--
-- * 'amCollapseId' - An ID that, if assigned to multiple messages, causes APNs to coalesce the messages into a single push notification instead of delivering each message individually. The value must not exceed 64 bytes. Amazon Pinpoint uses this value to set the apns-collapse-id request header when it sends the message to APNs.
apnsMessage
    :: APNSMessage
apnsMessage
  = APNSMessage'{_amSubstitutions = Nothing,
                 _amSilentPush = Nothing, _amPriority = Nothing,
                 _amRawContent = Nothing, _amData = Nothing,
                 _amBody = Nothing, _amCategory = Nothing,
                 _amTimeToLive = Nothing, _amURL = Nothing,
                 _amSound = Nothing, _amAction = Nothing,
                 _amMediaURL = Nothing,
                 _amPreferredAuthenticationMethod = Nothing,
                 _amBadge = Nothing, _amTitle = Nothing,
                 _amThreadId = Nothing, _amCollapseId = Nothing}

-- | Default message substitutions. Can be overridden by individual address substitutions.
amSubstitutions :: Lens' APNSMessage (HashMap Text [Text])
amSubstitutions = lens _amSubstitutions (\ s a -> s{_amSubstitutions = a}) . _Default . _Map

-- | Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
amSilentPush :: Lens' APNSMessage (Maybe Bool)
amSilentPush = lens _amSilentPush (\ s a -> s{_amSilentPush = a})

-- | The message priority. Amazon Pinpoint uses this value to set the apns-priority request header when it sends the message to APNs. Accepts the following values: "5" - Low priority. Messages might be delayed, delivered in groups, and throttled. "10" - High priority. Messages are sent immediately. High priority messages must cause an alert, sound, or badge on the receiving device. The default value is "10". The equivalent values for FCM or GCM messages are "normal" and "high". Amazon Pinpoint accepts these values for APNs messages and converts them. For more information about the apns-priority parameter, see Communicating with APNs in the APNs Local and Remote Notification Programming Guide.
amPriority :: Lens' APNSMessage (Maybe Text)
amPriority = lens _amPriority (\ s a -> s{_amPriority = a})

-- | The Raw JSON formatted string to be used as the payload. This value overrides the message.
amRawContent :: Lens' APNSMessage (Maybe Text)
amRawContent = lens _amRawContent (\ s a -> s{_amRawContent = a})

-- | The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
amData :: Lens' APNSMessage (HashMap Text Text)
amData = lens _amData (\ s a -> s{_amData = a}) . _Default . _Map

-- | The message body of the notification, the email body or the text message.
amBody :: Lens' APNSMessage (Maybe Text)
amBody = lens _amBody (\ s a -> s{_amBody = a})

-- | Provide this key with a string value that represents the notification's type. This value corresponds to the value in the identifier property of one of your app's registered categories.
amCategory :: Lens' APNSMessage (Maybe Text)
amCategory = lens _amCategory (\ s a -> s{_amCategory = a})

-- | The length of time (in seconds) that APNs stores and attempts to deliver the message. If the value is 0, APNs does not store the message or attempt to deliver it more than once. Amazon Pinpoint uses this value to set the apns-expiration request header when it sends the message to APNs.
amTimeToLive :: Lens' APNSMessage (Maybe Int)
amTimeToLive = lens _amTimeToLive (\ s a -> s{_amTimeToLive = a})

-- | The URL to open in the user's mobile browser. Used if the value for Action is URL.
amURL :: Lens' APNSMessage (Maybe Text)
amURL = lens _amURL (\ s a -> s{_amURL = a})

-- | Include this key when you want the system to play a sound. The value of this key is the name of a sound file in your app's main bundle or in the Library/Sounds folder of your app's data container. If the sound file cannot be found, or if you specify defaultfor the value, the system plays the default alert sound.
amSound :: Lens' APNSMessage (Maybe Text)
amSound = lens _amSound (\ s a -> s{_amSound = a})

-- | The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
amAction :: Lens' APNSMessage (Maybe Action)
amAction = lens _amAction (\ s a -> s{_amAction = a})

-- | The URL that points to a video used in the push notification.
amMediaURL :: Lens' APNSMessage (Maybe Text)
amMediaURL = lens _amMediaURL (\ s a -> s{_amMediaURL = a})

-- | The preferred authentication method, either "CERTIFICATE" or "TOKEN"
amPreferredAuthenticationMethod :: Lens' APNSMessage (Maybe Text)
amPreferredAuthenticationMethod = lens _amPreferredAuthenticationMethod (\ s a -> s{_amPreferredAuthenticationMethod = a})

-- | Include this key when you want the system to modify the badge of your app icon. If this key is not included in the dictionary, the badge is not changed. To remove the badge, set the value of this key to 0.
amBadge :: Lens' APNSMessage (Maybe Int)
amBadge = lens _amBadge (\ s a -> s{_amBadge = a})

-- | The message title that displays above the message on the user's device.
amTitle :: Lens' APNSMessage (Maybe Text)
amTitle = lens _amTitle (\ s a -> s{_amTitle = a})

-- | Provide this key with a string value that represents the app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.
amThreadId :: Lens' APNSMessage (Maybe Text)
amThreadId = lens _amThreadId (\ s a -> s{_amThreadId = a})

-- | An ID that, if assigned to multiple messages, causes APNs to coalesce the messages into a single push notification instead of delivering each message individually. The value must not exceed 64 bytes. Amazon Pinpoint uses this value to set the apns-collapse-id request header when it sends the message to APNs.
amCollapseId :: Lens' APNSMessage (Maybe Text)
amCollapseId = lens _amCollapseId (\ s a -> s{_amCollapseId = a})

instance Hashable APNSMessage where

instance NFData APNSMessage where

instance ToJSON APNSMessage where
        toJSON APNSMessage'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _amSubstitutions,
                  ("SilentPush" .=) <$> _amSilentPush,
                  ("Priority" .=) <$> _amPriority,
                  ("RawContent" .=) <$> _amRawContent,
                  ("Data" .=) <$> _amData, ("Body" .=) <$> _amBody,
                  ("Category" .=) <$> _amCategory,
                  ("TimeToLive" .=) <$> _amTimeToLive,
                  ("Url" .=) <$> _amURL, ("Sound" .=) <$> _amSound,
                  ("Action" .=) <$> _amAction,
                  ("MediaUrl" .=) <$> _amMediaURL,
                  ("PreferredAuthenticationMethod" .=) <$>
                    _amPreferredAuthenticationMethod,
                  ("Badge" .=) <$> _amBadge, ("Title" .=) <$> _amTitle,
                  ("ThreadId" .=) <$> _amThreadId,
                  ("CollapseId" .=) <$> _amCollapseId])
