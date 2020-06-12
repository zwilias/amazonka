{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.FilterRule
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.FilterRule where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.FilterRuleName

-- | Container for key value pair that defines the criteria for the filter rule.
--
-- /See:/ 'filterRule' smart constructor.
data FilterRule = FilterRule'{_frValue ::
                              !(Maybe Text),
                              _frName :: !(Maybe FilterRuleName)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FilterRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frValue' - Undocumented member.
--
-- * 'frName' - <http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html Configuring Event Notifications> 
filterRule
    :: FilterRule
filterRule
  = FilterRule'{_frValue = Nothing, _frName = Nothing}

-- | Undocumented member.
frValue :: Lens' FilterRule (Maybe Text)
frValue = lens _frValue (\ s a -> s{_frValue = a})

-- | <http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html Configuring Event Notifications> 
frName :: Lens' FilterRule (Maybe FilterRuleName)
frName = lens _frName (\ s a -> s{_frName = a})

instance FromXML FilterRule where
        parseXML x
          = FilterRule' <$> (x .@? "Value") <*> (x .@? "Name")

instance Hashable FilterRule where

instance NFData FilterRule where

instance ToXML FilterRule where
        toXML FilterRule'{..}
          = mconcat ["Value" @= _frValue, "Name" @= _frName]
