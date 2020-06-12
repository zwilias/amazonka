{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.Action
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.Action where

import Network.AWS.ELBv2.Types.ActionTypeEnum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an action.
--
--
--
-- /See:/ 'action' smart constructor.
data Action = Action'{_aType :: !ActionTypeEnum,
                      _aTargetGroupARN :: !Text}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aType' - The type of action.
--
-- * 'aTargetGroupARN' - The Amazon Resource Name (ARN) of the target group.
action
    :: ActionTypeEnum -- ^ 'aType'
    -> Text -- ^ 'aTargetGroupARN'
    -> Action
action pType_ pTargetGroupARN_
  = Action'{_aType = pType_,
            _aTargetGroupARN = pTargetGroupARN_}

-- | The type of action.
aType :: Lens' Action ActionTypeEnum
aType = lens _aType (\ s a -> s{_aType = a})

-- | The Amazon Resource Name (ARN) of the target group.
aTargetGroupARN :: Lens' Action Text
aTargetGroupARN = lens _aTargetGroupARN (\ s a -> s{_aTargetGroupARN = a})

instance FromXML Action where
        parseXML x
          = Action' <$>
              (x .@ "Type") <*> (x .@ "TargetGroupArn")

instance Hashable Action where

instance NFData Action where

instance ToQuery Action where
        toQuery Action'{..}
          = mconcat
              ["Type" =: _aType,
               "TargetGroupArn" =: _aTargetGroupARN]
