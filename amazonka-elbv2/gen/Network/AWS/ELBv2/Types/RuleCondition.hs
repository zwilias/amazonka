{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.RuleCondition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.RuleCondition where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a condition for a rule.
--
--
--
-- /See:/ 'ruleCondition' smart constructor.
data RuleCondition = RuleCondition'{_rcField ::
                                    !(Maybe Text),
                                    _rcValues :: !(Maybe [Text])}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RuleCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcField' - The name of the field. The possible values are @host-header@ and @path-pattern@ .
--
-- * 'rcValues' - The condition value. If the field name is @host-header@ , you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.     * A-Z, a-z, 0-9     * - .     * * (matches 0 or more characters)     * ? (matches exactly 1 character) If the field name is @path-pattern@ , you can specify a single path pattern (for example, /img/*). A path pattern is case sensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.     * A-Z, a-z, 0-9     * _ - . $ / ~ " ' @ : +     * & (using &amp;)     * * (matches 0 or more characters)     * ? (matches exactly 1 character)
ruleCondition
    :: RuleCondition
ruleCondition
  = RuleCondition'{_rcField = Nothing,
                   _rcValues = Nothing}

-- | The name of the field. The possible values are @host-header@ and @path-pattern@ .
rcField :: Lens' RuleCondition (Maybe Text)
rcField = lens _rcField (\ s a -> s{_rcField = a})

-- | The condition value. If the field name is @host-header@ , you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.     * A-Z, a-z, 0-9     * - .     * * (matches 0 or more characters)     * ? (matches exactly 1 character) If the field name is @path-pattern@ , you can specify a single path pattern (for example, /img/*). A path pattern is case sensitive, can be up to 128 characters in length, and can contain any of the following characters. Note that you can include up to three wildcard characters.     * A-Z, a-z, 0-9     * _ - . $ / ~ " ' @ : +     * & (using &amp;)     * * (matches 0 or more characters)     * ? (matches exactly 1 character)
rcValues :: Lens' RuleCondition [Text]
rcValues = lens _rcValues (\ s a -> s{_rcValues = a}) . _Default . _Coerce

instance FromXML RuleCondition where
        parseXML x
          = RuleCondition' <$>
              (x .@? "Field") <*>
                (x .@? "Values" .!@ mempty >>=
                   may (parseXMLList "member"))

instance Hashable RuleCondition where

instance NFData RuleCondition where

instance ToQuery RuleCondition where
        toQuery RuleCondition'{..}
          = mconcat
              ["Field" =: _rcField,
               "Values" =:
                 toQuery (toQueryList "member" <$> _rcValues)]
