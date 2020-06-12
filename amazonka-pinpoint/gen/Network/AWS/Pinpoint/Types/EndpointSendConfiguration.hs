{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointSendConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointSendConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Endpoint send configuration.
--
-- /See:/ 'endpointSendConfiguration' smart constructor.
data EndpointSendConfiguration = EndpointSendConfiguration'{_escSubstitutions
                                                            ::
                                                            !(Maybe
                                                                (Map Text
                                                                   [Text])),
                                                            _escTitleOverride ::
                                                            !(Maybe Text),
                                                            _escContext ::
                                                            !(Maybe
                                                                (Map Text
                                                                   Text)),
                                                            _escRawContent ::
                                                            !(Maybe Text),
                                                            _escBodyOverride ::
                                                            !(Maybe Text)}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'EndpointSendConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'escSubstitutions' - A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
--
-- * 'escTitleOverride' - Title override. If specified will override default title if applicable.
--
-- * 'escContext' - A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
--
-- * 'escRawContent' - The Raw JSON formatted string to be used as the payload. This value overrides the message.
--
-- * 'escBodyOverride' - Body override. If specified will override default body.
endpointSendConfiguration
    :: EndpointSendConfiguration
endpointSendConfiguration
  = EndpointSendConfiguration'{_escSubstitutions =
                                 Nothing,
                               _escTitleOverride = Nothing,
                               _escContext = Nothing, _escRawContent = Nothing,
                               _escBodyOverride = Nothing}

-- | A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
escSubstitutions :: Lens' EndpointSendConfiguration (HashMap Text [Text])
escSubstitutions = lens _escSubstitutions (\ s a -> s{_escSubstitutions = a}) . _Default . _Map

-- | Title override. If specified will override default title if applicable.
escTitleOverride :: Lens' EndpointSendConfiguration (Maybe Text)
escTitleOverride = lens _escTitleOverride (\ s a -> s{_escTitleOverride = a})

-- | A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
escContext :: Lens' EndpointSendConfiguration (HashMap Text Text)
escContext = lens _escContext (\ s a -> s{_escContext = a}) . _Default . _Map

-- | The Raw JSON formatted string to be used as the payload. This value overrides the message.
escRawContent :: Lens' EndpointSendConfiguration (Maybe Text)
escRawContent = lens _escRawContent (\ s a -> s{_escRawContent = a})

-- | Body override. If specified will override default body.
escBodyOverride :: Lens' EndpointSendConfiguration (Maybe Text)
escBodyOverride = lens _escBodyOverride (\ s a -> s{_escBodyOverride = a})

instance Hashable EndpointSendConfiguration where

instance NFData EndpointSendConfiguration where

instance ToJSON EndpointSendConfiguration where
        toJSON EndpointSendConfiguration'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _escSubstitutions,
                  ("TitleOverride" .=) <$> _escTitleOverride,
                  ("Context" .=) <$> _escContext,
                  ("RawContent" .=) <$> _escRawContent,
                  ("BodyOverride" .=) <$> _escBodyOverride])
