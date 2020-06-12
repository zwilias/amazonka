{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ConstraintDetail
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types.ConstraintDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a constraint.
--
--
--
-- /See:/ 'constraintDetail' smart constructor.
data ConstraintDetail = ConstraintDetail'{_cdConstraintId
                                          :: !(Maybe Text),
                                          _cdOwner :: !(Maybe Text),
                                          _cdType :: !(Maybe Text),
                                          _cdDescription :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConstraintDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdConstraintId' - The identifier of the constraint.
--
-- * 'cdOwner' - The owner of the constraint.
--
-- * 'cdType' - The type of constraint.     * @LAUNCH@      * @NOTIFICATION@      * @TEMPLATE@ 
--
-- * 'cdDescription' - The description of the constraint.
constraintDetail
    :: ConstraintDetail
constraintDetail
  = ConstraintDetail'{_cdConstraintId = Nothing,
                      _cdOwner = Nothing, _cdType = Nothing,
                      _cdDescription = Nothing}

-- | The identifier of the constraint.
cdConstraintId :: Lens' ConstraintDetail (Maybe Text)
cdConstraintId = lens _cdConstraintId (\ s a -> s{_cdConstraintId = a})

-- | The owner of the constraint.
cdOwner :: Lens' ConstraintDetail (Maybe Text)
cdOwner = lens _cdOwner (\ s a -> s{_cdOwner = a})

-- | The type of constraint.     * @LAUNCH@      * @NOTIFICATION@      * @TEMPLATE@ 
cdType :: Lens' ConstraintDetail (Maybe Text)
cdType = lens _cdType (\ s a -> s{_cdType = a})

-- | The description of the constraint.
cdDescription :: Lens' ConstraintDetail (Maybe Text)
cdDescription = lens _cdDescription (\ s a -> s{_cdDescription = a})

instance FromJSON ConstraintDetail where
        parseJSON
          = withObject "ConstraintDetail"
              (\ x ->
                 ConstraintDetail' <$>
                   (x .:? "ConstraintId") <*> (x .:? "Owner") <*>
                     (x .:? "Type")
                     <*> (x .:? "Description"))

instance Hashable ConstraintDetail where

instance NFData ConstraintDetail where
