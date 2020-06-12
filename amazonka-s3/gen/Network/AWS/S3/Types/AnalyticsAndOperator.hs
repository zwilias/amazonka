{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.AnalyticsAndOperator
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.AnalyticsAndOperator where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Tag

-- | /See:/ 'analyticsAndOperator' smart constructor.
data AnalyticsAndOperator = AnalyticsAndOperator'{_aaoPrefix
                                                  :: !(Maybe Text),
                                                  _aaoTags :: !(Maybe [Tag])}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnalyticsAndOperator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaoPrefix' - The prefix to use when evaluating an AND predicate.
--
-- * 'aaoTags' - The list of tags to use when evaluating an AND predicate.
analyticsAndOperator
    :: AnalyticsAndOperator
analyticsAndOperator
  = AnalyticsAndOperator'{_aaoPrefix = Nothing,
                          _aaoTags = Nothing}

-- | The prefix to use when evaluating an AND predicate.
aaoPrefix :: Lens' AnalyticsAndOperator (Maybe Text)
aaoPrefix = lens _aaoPrefix (\ s a -> s{_aaoPrefix = a})

-- | The list of tags to use when evaluating an AND predicate.
aaoTags :: Lens' AnalyticsAndOperator [Tag]
aaoTags = lens _aaoTags (\ s a -> s{_aaoTags = a}) . _Default . _Coerce

instance FromXML AnalyticsAndOperator where
        parseXML x
          = AnalyticsAndOperator' <$>
              (x .@? "Prefix") <*>
                (x .@? "Tag" .!@ mempty >>= may (parseXMLList "Tag"))

instance Hashable AnalyticsAndOperator where

instance NFData AnalyticsAndOperator where

instance ToXML AnalyticsAndOperator where
        toXML AnalyticsAndOperator'{..}
          = mconcat
              ["Prefix" @= _aaoPrefix,
               "Tag" @= toXML (toXMLList "Tag" <$> _aaoTags)]
