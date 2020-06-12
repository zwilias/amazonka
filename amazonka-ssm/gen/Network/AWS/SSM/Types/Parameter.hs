{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Parameter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.Parameter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ParameterType

-- | An Amazon EC2 Systems Manager parameter in Parameter Store.
--
--
--
-- /See:/ 'parameter' smart constructor.
data Parameter = Parameter'{_pValue :: !(Maybe Text),
                            _pName :: !(Maybe Text),
                            _pVersion :: !(Maybe Integer),
                            _pType :: !(Maybe ParameterType)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue' - The parameter value.
--
-- * 'pName' - The name of the parameter.
--
-- * 'pVersion' - The parameter version.
--
-- * 'pType' - The type of parameter. Valid values include the following: String, String list, Secure string.
parameter
    :: Parameter
parameter
  = Parameter'{_pValue = Nothing, _pName = Nothing,
               _pVersion = Nothing, _pType = Nothing}

-- | The parameter value.
pValue :: Lens' Parameter (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | The name of the parameter.
pName :: Lens' Parameter (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The parameter version.
pVersion :: Lens' Parameter (Maybe Integer)
pVersion = lens _pVersion (\ s a -> s{_pVersion = a})

-- | The type of parameter. Valid values include the following: String, String list, Secure string.
pType :: Lens' Parameter (Maybe ParameterType)
pType = lens _pType (\ s a -> s{_pType = a})

instance FromJSON Parameter where
        parseJSON
          = withObject "Parameter"
              (\ x ->
                 Parameter' <$>
                   (x .:? "Value") <*> (x .:? "Name") <*>
                     (x .:? "Version")
                     <*> (x .:? "Type"))

instance Hashable Parameter where

instance NFData Parameter where
