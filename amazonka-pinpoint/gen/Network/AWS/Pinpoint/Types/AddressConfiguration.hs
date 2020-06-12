{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.AddressConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.AddressConfiguration where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Prelude

-- | Address configuration.
--
-- /See:/ 'addressConfiguration' smart constructor.
data AddressConfiguration = AddressConfiguration'{_acSubstitutions
                                                  :: !(Maybe (Map Text [Text])),
                                                  _acTitleOverride ::
                                                  !(Maybe Text),
                                                  _acContext ::
                                                  !(Maybe (Map Text Text)),
                                                  _acRawContent ::
                                                  !(Maybe Text),
                                                  _acBodyOverride ::
                                                  !(Maybe Text),
                                                  _acChannelType ::
                                                  !(Maybe ChannelType)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddressConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acSubstitutions' - A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
--
-- * 'acTitleOverride' - Title override. If specified will override default title if applicable.
--
-- * 'acContext' - A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
--
-- * 'acRawContent' - The Raw JSON formatted string to be used as the payload. This value overrides the message.
--
-- * 'acBodyOverride' - Body override. If specified will override default body.
--
-- * 'acChannelType' - The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
addressConfiguration
    :: AddressConfiguration
addressConfiguration
  = AddressConfiguration'{_acSubstitutions = Nothing,
                          _acTitleOverride = Nothing, _acContext = Nothing,
                          _acRawContent = Nothing, _acBodyOverride = Nothing,
                          _acChannelType = Nothing}

-- | A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
acSubstitutions :: Lens' AddressConfiguration (HashMap Text [Text])
acSubstitutions = lens _acSubstitutions (\ s a -> s{_acSubstitutions = a}) . _Default . _Map

-- | Title override. If specified will override default title if applicable.
acTitleOverride :: Lens' AddressConfiguration (Maybe Text)
acTitleOverride = lens _acTitleOverride (\ s a -> s{_acTitleOverride = a})

-- | A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
acContext :: Lens' AddressConfiguration (HashMap Text Text)
acContext = lens _acContext (\ s a -> s{_acContext = a}) . _Default . _Map

-- | The Raw JSON formatted string to be used as the payload. This value overrides the message.
acRawContent :: Lens' AddressConfiguration (Maybe Text)
acRawContent = lens _acRawContent (\ s a -> s{_acRawContent = a})

-- | Body override. If specified will override default body.
acBodyOverride :: Lens' AddressConfiguration (Maybe Text)
acBodyOverride = lens _acBodyOverride (\ s a -> s{_acBodyOverride = a})

-- | The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
acChannelType :: Lens' AddressConfiguration (Maybe ChannelType)
acChannelType = lens _acChannelType (\ s a -> s{_acChannelType = a})

instance Hashable AddressConfiguration where

instance NFData AddressConfiguration where

instance ToJSON AddressConfiguration where
        toJSON AddressConfiguration'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _acSubstitutions,
                  ("TitleOverride" .=) <$> _acTitleOverride,
                  ("Context" .=) <$> _acContext,
                  ("RawContent" .=) <$> _acRawContent,
                  ("BodyOverride" .=) <$> _acBodyOverride,
                  ("ChannelType" .=) <$> _acChannelType])
