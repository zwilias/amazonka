{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Input
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.Input where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputDestination
import Network.AWS.MediaLive.Types.InputSource
import Network.AWS.MediaLive.Types.InputState
import Network.AWS.MediaLive.Types.InputType
import Network.AWS.Prelude

-- | Placeholder documentation for Input
--
-- /See:/ 'input' smart constructor.
data Input = Input'{_iState :: !(Maybe InputState),
                    _iSecurityGroups :: !(Maybe [Text]),
                    _iARN :: !(Maybe Text),
                    _iSources :: !(Maybe [InputSource]),
                    _iDestinations :: !(Maybe [InputDestination]),
                    _iName :: !(Maybe Text),
                    _iAttachedChannels :: !(Maybe [Text]),
                    _iId :: !(Maybe Text), _iType :: !(Maybe InputType)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iState' - Undocumented member.
--
-- * 'iSecurityGroups' - A list of IDs for all the security groups attached to the input.
--
-- * 'iARN' - The Unique ARN of the input (generated, immutable).
--
-- * 'iSources' - A list of the sources of the input (PULL-type).
--
-- * 'iDestinations' - A list of the destinations of the input (PUSH-type).
--
-- * 'iName' - The user-assigned name (This is a mutable value).
--
-- * 'iAttachedChannels' - A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
--
-- * 'iId' - The generated ID of the input (unique for user account, immutable).
--
-- * 'iType' - Undocumented member.
input
    :: Input
input
  = Input'{_iState = Nothing,
           _iSecurityGroups = Nothing, _iARN = Nothing,
           _iSources = Nothing, _iDestinations = Nothing,
           _iName = Nothing, _iAttachedChannels = Nothing,
           _iId = Nothing, _iType = Nothing}

-- | Undocumented member.
iState :: Lens' Input (Maybe InputState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | A list of IDs for all the security groups attached to the input.
iSecurityGroups :: Lens' Input [Text]
iSecurityGroups = lens _iSecurityGroups (\ s a -> s{_iSecurityGroups = a}) . _Default . _Coerce

-- | The Unique ARN of the input (generated, immutable).
iARN :: Lens' Input (Maybe Text)
iARN = lens _iARN (\ s a -> s{_iARN = a})

-- | A list of the sources of the input (PULL-type).
iSources :: Lens' Input [InputSource]
iSources = lens _iSources (\ s a -> s{_iSources = a}) . _Default . _Coerce

-- | A list of the destinations of the input (PUSH-type).
iDestinations :: Lens' Input [InputDestination]
iDestinations = lens _iDestinations (\ s a -> s{_iDestinations = a}) . _Default . _Coerce

-- | The user-assigned name (This is a mutable value).
iName :: Lens' Input (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
iAttachedChannels :: Lens' Input [Text]
iAttachedChannels = lens _iAttachedChannels (\ s a -> s{_iAttachedChannels = a}) . _Default . _Coerce

-- | The generated ID of the input (unique for user account, immutable).
iId :: Lens' Input (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

-- | Undocumented member.
iType :: Lens' Input (Maybe InputType)
iType = lens _iType (\ s a -> s{_iType = a})

instance FromJSON Input where
        parseJSON
          = withObject "Input"
              (\ x ->
                 Input' <$>
                   (x .:? "state") <*>
                     (x .:? "securityGroups" .!= mempty)
                     <*> (x .:? "arn")
                     <*> (x .:? "sources" .!= mempty)
                     <*> (x .:? "destinations" .!= mempty)
                     <*> (x .:? "name")
                     <*> (x .:? "attachedChannels" .!= mempty)
                     <*> (x .:? "id")
                     <*> (x .:? "type"))

instance Hashable Input where

instance NFData Input where
