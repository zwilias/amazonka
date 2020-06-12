{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.Types.RotationRulesType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SecretsManager.Types.RotationRulesType where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure that defines the rotation configuration for the secret.
--
--
--
-- /See:/ 'rotationRulesType' smart constructor.
newtype RotationRulesType = RotationRulesType'{_rrtAutomaticallyAfterDays
                                               :: Maybe Nat}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RotationRulesType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrtAutomaticallyAfterDays' - Specifies the number of days between automatic scheduled rotations of the secret.
rotationRulesType
    :: RotationRulesType
rotationRulesType
  = RotationRulesType'{_rrtAutomaticallyAfterDays =
                         Nothing}

-- | Specifies the number of days between automatic scheduled rotations of the secret.
rrtAutomaticallyAfterDays :: Lens' RotationRulesType (Maybe Natural)
rrtAutomaticallyAfterDays = lens _rrtAutomaticallyAfterDays (\ s a -> s{_rrtAutomaticallyAfterDays = a}) . mapping _Nat

instance FromJSON RotationRulesType where
        parseJSON
          = withObject "RotationRulesType"
              (\ x ->
                 RotationRulesType' <$>
                   (x .:? "AutomaticallyAfterDays"))

instance Hashable RotationRulesType where

instance NFData RotationRulesType where

instance ToJSON RotationRulesType where
        toJSON RotationRulesType'{..}
          = object
              (catMaybes
                 [("AutomaticallyAfterDays" .=) <$>
                    _rrtAutomaticallyAfterDays])
