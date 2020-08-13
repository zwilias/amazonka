{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.UpdateParam
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.UpdateParam where

import Network.AWS.EKS.Types.UpdateParamType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the details of an update request.
--
--
--
-- /See:/ 'updateParam' smart constructor.
data UpdateParam = UpdateParam'{_upValue ::
                                !(Maybe Text),
                                _upType :: !(Maybe UpdateParamType)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateParam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upValue' - The value of the keys submitted as part of an update request.
--
-- * 'upType' - The keys associated with an update request.
updateParam
    :: UpdateParam
updateParam
  = UpdateParam'{_upValue = Nothing, _upType = Nothing}

-- | The value of the keys submitted as part of an update request.
upValue :: Lens' UpdateParam (Maybe Text)
upValue = lens _upValue (\ s a -> s{_upValue = a})

-- | The keys associated with an update request.
upType :: Lens' UpdateParam (Maybe UpdateParamType)
upType = lens _upType (\ s a -> s{_upType = a})

instance FromJSON UpdateParam where
        parseJSON
          = withObject "UpdateParam"
              (\ x ->
                 UpdateParam' <$> (x .:? "value") <*> (x .:? "type"))

instance Hashable UpdateParam where

instance NFData UpdateParam where
