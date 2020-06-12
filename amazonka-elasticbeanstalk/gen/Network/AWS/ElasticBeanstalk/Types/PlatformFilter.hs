{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformFilter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticBeanstalk.Types.PlatformFilter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specify criteria to restrict the results when listing custom platforms.
--
--
-- The filter is evaluated as the expression:
--
-- @Type@ @Operator@ @Values[i]@ 
--
--
-- /See:/ 'platformFilter' smart constructor.
data PlatformFilter = PlatformFilter'{_pfValues ::
                                      !(Maybe [Text]),
                                      _pfOperator :: !(Maybe Text),
                                      _pfType :: !(Maybe Text)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlatformFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfValues' - The list of values applied to the custom platform attribute.
--
-- * 'pfOperator' - The operator to apply to the @Type@ with each of the @Values@ . Valid Values: @=@ (equal to) | @!=@ (not equal to) | @<@ (less than) | @<=@ (less than or equal to) | @>@ (greater than) | @>=@ (greater than or equal to) | @contains@ | @begins_with@ | @ends_with@ 
--
-- * 'pfType' - The custom platform attribute to which the filter values are applied. Valid Values: @PlatformName@ | @PlatformVersion@ | @PlatformStatus@ | @PlatformOwner@ 
platformFilter
    :: PlatformFilter
platformFilter
  = PlatformFilter'{_pfValues = Nothing,
                    _pfOperator = Nothing, _pfType = Nothing}

-- | The list of values applied to the custom platform attribute.
pfValues :: Lens' PlatformFilter [Text]
pfValues = lens _pfValues (\ s a -> s{_pfValues = a}) . _Default . _Coerce

-- | The operator to apply to the @Type@ with each of the @Values@ . Valid Values: @=@ (equal to) | @!=@ (not equal to) | @<@ (less than) | @<=@ (less than or equal to) | @>@ (greater than) | @>=@ (greater than or equal to) | @contains@ | @begins_with@ | @ends_with@ 
pfOperator :: Lens' PlatformFilter (Maybe Text)
pfOperator = lens _pfOperator (\ s a -> s{_pfOperator = a})

-- | The custom platform attribute to which the filter values are applied. Valid Values: @PlatformName@ | @PlatformVersion@ | @PlatformStatus@ | @PlatformOwner@ 
pfType :: Lens' PlatformFilter (Maybe Text)
pfType = lens _pfType (\ s a -> s{_pfType = a})

instance Hashable PlatformFilter where

instance NFData PlatformFilter where

instance ToQuery PlatformFilter where
        toQuery PlatformFilter'{..}
          = mconcat
              ["Values" =:
                 toQuery (toQueryList "member" <$> _pfValues),
               "Operator" =: _pfOperator, "Type" =: _pfType]
