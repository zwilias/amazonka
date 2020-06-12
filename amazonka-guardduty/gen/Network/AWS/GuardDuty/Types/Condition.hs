{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Condition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.Condition where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Finding attribute (for example, accountId) for which conditions and values must be specified when querying findings.
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition'{_cEQ :: !(Maybe [Text]),
                            _cLte :: !(Maybe Int), _cGT :: !(Maybe Int),
                            _cNeq :: !(Maybe [Text]), _cLT :: !(Maybe Int),
                            _cGte :: !(Maybe Int)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEQ' - Represents the equal condition to be applied to a single field when querying for findings.
--
-- * 'cLte' - Represents the less than equal condition to be applied to a single field when querying for findings.
--
-- * 'cGT' - Represents the greater than condition to be applied to a single field when querying for findings.
--
-- * 'cNeq' - Represents the not equal condition to be applied to a single field when querying for findings.
--
-- * 'cLT' - Represents the less than condition to be applied to a single field when querying for findings.
--
-- * 'cGte' - Represents the greater than equal condition to be applied to a single field when querying for findings.
condition
    :: Condition
condition
  = Condition'{_cEQ = Nothing, _cLte = Nothing,
               _cGT = Nothing, _cNeq = Nothing, _cLT = Nothing,
               _cGte = Nothing}

-- | Represents the equal condition to be applied to a single field when querying for findings.
cEQ :: Lens' Condition [Text]
cEQ = lens _cEQ (\ s a -> s{_cEQ = a}) . _Default . _Coerce

-- | Represents the less than equal condition to be applied to a single field when querying for findings.
cLte :: Lens' Condition (Maybe Int)
cLte = lens _cLte (\ s a -> s{_cLte = a})

-- | Represents the greater than condition to be applied to a single field when querying for findings.
cGT :: Lens' Condition (Maybe Int)
cGT = lens _cGT (\ s a -> s{_cGT = a})

-- | Represents the not equal condition to be applied to a single field when querying for findings.
cNeq :: Lens' Condition [Text]
cNeq = lens _cNeq (\ s a -> s{_cNeq = a}) . _Default . _Coerce

-- | Represents the less than condition to be applied to a single field when querying for findings.
cLT :: Lens' Condition (Maybe Int)
cLT = lens _cLT (\ s a -> s{_cLT = a})

-- | Represents the greater than equal condition to be applied to a single field when querying for findings.
cGte :: Lens' Condition (Maybe Int)
cGte = lens _cGte (\ s a -> s{_cGte = a})

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ x ->
                 Condition' <$>
                   (x .:? "eq" .!= mempty) <*> (x .:? "lte") <*>
                     (x .:? "gt")
                     <*> (x .:? "neq" .!= mempty)
                     <*> (x .:? "lt")
                     <*> (x .:? "gte"))

instance Hashable Condition where

instance NFData Condition where

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("eq" .=) <$> _cEQ, ("lte" .=) <$> _cLte,
                  ("gt" .=) <$> _cGT, ("neq" .=) <$> _cNeq,
                  ("lt" .=) <$> _cLT, ("gte" .=) <$> _cGte])
