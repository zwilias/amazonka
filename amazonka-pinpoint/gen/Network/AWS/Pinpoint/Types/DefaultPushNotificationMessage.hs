{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | Default Push Notification Message.
--
-- /See:/ 'defaultPushNotificationMessage' smart constructor.
data DefaultPushNotificationMessage = DefaultPushNotificationMessage'{_dpnmSubstitutions
                                                                      ::
                                                                      !(Maybe
                                                                          (Map
                                                                             Text
                                                                             [Text])),
                                                                      _dpnmSilentPush
                                                                      ::
                                                                      !(Maybe
                                                                          Bool),
                                                                      _dpnmData
                                                                      ::
                                                                      !(Maybe
                                                                          (Map
                                                                             Text
                                                                             Text)),
                                                                      _dpnmBody
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _dpnmURL
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _dpnmAction
                                                                      ::
                                                                      !(Maybe
                                                                          Action),
                                                                      _dpnmTitle
                                                                      ::
                                                                      !(Maybe
                                                                          Text)}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'DefaultPushNotificationMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpnmSubstitutions' - Default message substitutions. Can be overridden by individual address substitutions.
--
-- * 'dpnmSilentPush' - Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
--
-- * 'dpnmData' - The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
--
-- * 'dpnmBody' - The message body of the notification, the email body or the text message.
--
-- * 'dpnmURL' - The URL to open in the user's mobile browser. Used if the value for Action is URL.
--
-- * 'dpnmAction' - The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
--
-- * 'dpnmTitle' - The message title that displays above the message on the user's device.
defaultPushNotificationMessage
    :: DefaultPushNotificationMessage
defaultPushNotificationMessage
  = DefaultPushNotificationMessage'{_dpnmSubstitutions
                                      = Nothing,
                                    _dpnmSilentPush = Nothing,
                                    _dpnmData = Nothing, _dpnmBody = Nothing,
                                    _dpnmURL = Nothing, _dpnmAction = Nothing,
                                    _dpnmTitle = Nothing}

-- | Default message substitutions. Can be overridden by individual address substitutions.
dpnmSubstitutions :: Lens' DefaultPushNotificationMessage (HashMap Text [Text])
dpnmSubstitutions = lens _dpnmSubstitutions (\ s a -> s{_dpnmSubstitutions = a}) . _Default . _Map

-- | Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
dpnmSilentPush :: Lens' DefaultPushNotificationMessage (Maybe Bool)
dpnmSilentPush = lens _dpnmSilentPush (\ s a -> s{_dpnmSilentPush = a})

-- | The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
dpnmData :: Lens' DefaultPushNotificationMessage (HashMap Text Text)
dpnmData = lens _dpnmData (\ s a -> s{_dpnmData = a}) . _Default . _Map

-- | The message body of the notification, the email body or the text message.
dpnmBody :: Lens' DefaultPushNotificationMessage (Maybe Text)
dpnmBody = lens _dpnmBody (\ s a -> s{_dpnmBody = a})

-- | The URL to open in the user's mobile browser. Used if the value for Action is URL.
dpnmURL :: Lens' DefaultPushNotificationMessage (Maybe Text)
dpnmURL = lens _dpnmURL (\ s a -> s{_dpnmURL = a})

-- | The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
dpnmAction :: Lens' DefaultPushNotificationMessage (Maybe Action)
dpnmAction = lens _dpnmAction (\ s a -> s{_dpnmAction = a})

-- | The message title that displays above the message on the user's device.
dpnmTitle :: Lens' DefaultPushNotificationMessage (Maybe Text)
dpnmTitle = lens _dpnmTitle (\ s a -> s{_dpnmTitle = a})

instance Hashable DefaultPushNotificationMessage
         where

instance NFData DefaultPushNotificationMessage where

instance ToJSON DefaultPushNotificationMessage where
        toJSON DefaultPushNotificationMessage'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _dpnmSubstitutions,
                  ("SilentPush" .=) <$> _dpnmSilentPush,
                  ("Data" .=) <$> _dpnmData, ("Body" .=) <$> _dpnmBody,
                  ("Url" .=) <$> _dpnmURL,
                  ("Action" .=) <$> _dpnmAction,
                  ("Title" .=) <$> _dpnmTitle])
