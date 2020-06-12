{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.RepublishAction
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.RepublishAction where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an action to republish to another topic.
--
--
--
-- /See:/ 'republishAction' smart constructor.
data RepublishAction = RepublishAction'{_raRoleARN ::
                                        !Text,
                                        _raTopic :: !Text}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RepublishAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raRoleARN' - The ARN of the IAM role that grants access.
--
-- * 'raTopic' - The name of the MQTT topic.
republishAction
    :: Text -- ^ 'raRoleARN'
    -> Text -- ^ 'raTopic'
    -> RepublishAction
republishAction pRoleARN_ pTopic_
  = RepublishAction'{_raRoleARN = pRoleARN_,
                     _raTopic = pTopic_}

-- | The ARN of the IAM role that grants access.
raRoleARN :: Lens' RepublishAction Text
raRoleARN = lens _raRoleARN (\ s a -> s{_raRoleARN = a})

-- | The name of the MQTT topic.
raTopic :: Lens' RepublishAction Text
raTopic = lens _raTopic (\ s a -> s{_raTopic = a})

instance FromJSON RepublishAction where
        parseJSON
          = withObject "RepublishAction"
              (\ x ->
                 RepublishAction' <$>
                   (x .: "roleArn") <*> (x .: "topic"))

instance Hashable RepublishAction where

instance NFData RepublishAction where

instance ToJSON RepublishAction where
        toJSON RepublishAction'{..}
          = object
              (catMaybes
                 [Just ("roleArn" .= _raRoleARN),
                  Just ("topic" .= _raTopic)])
