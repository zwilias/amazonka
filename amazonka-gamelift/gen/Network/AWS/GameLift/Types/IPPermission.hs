{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.IPPermission
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.IPPermission where

import Network.AWS.GameLift.Types.IPProtocol
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A range of IP addresses and port settings that allow inbound traffic to connect to server processes on Amazon GameLift. Each game session hosted on a fleet is assigned a unique combination of IP address and port number, which must fall into the fleet's allowed ranges. This combination is included in the 'GameSession' object. 
--
--
--
-- /See:/ 'ipPermission' smart constructor.
data IPPermission = IPPermission'{_ipFromPort ::
                                  !Nat,
                                  _ipToPort :: !Nat, _ipIPRange :: !Text,
                                  _ipProtocol :: !IPProtocol}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IPPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipFromPort' - Starting value for a range of allowed port numbers.
--
-- * 'ipToPort' - Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than @FromPort@ .
--
-- * 'ipIPRange' - Range of allowed IP addresses. This value must be expressed in CIDR notation. Example: "@000.000.000.000/[subnet mask]@ " or optionally the shortened version "@0.0.0.0/[subnet mask]@ ".
--
-- * 'ipProtocol' - Network communication protocol used by the fleet.
ipPermission
    :: Natural -- ^ 'ipFromPort'
    -> Natural -- ^ 'ipToPort'
    -> Text -- ^ 'ipIPRange'
    -> IPProtocol -- ^ 'ipProtocol'
    -> IPPermission
ipPermission pFromPort_ pToPort_ pIPRange_ pProtocol_
  = IPPermission'{_ipFromPort = _Nat # pFromPort_,
                  _ipToPort = _Nat # pToPort_, _ipIPRange = pIPRange_,
                  _ipProtocol = pProtocol_}

-- | Starting value for a range of allowed port numbers.
ipFromPort :: Lens' IPPermission Natural
ipFromPort = lens _ipFromPort (\ s a -> s{_ipFromPort = a}) . _Nat

-- | Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than @FromPort@ .
ipToPort :: Lens' IPPermission Natural
ipToPort = lens _ipToPort (\ s a -> s{_ipToPort = a}) . _Nat

-- | Range of allowed IP addresses. This value must be expressed in CIDR notation. Example: "@000.000.000.000/[subnet mask]@ " or optionally the shortened version "@0.0.0.0/[subnet mask]@ ".
ipIPRange :: Lens' IPPermission Text
ipIPRange = lens _ipIPRange (\ s a -> s{_ipIPRange = a})

-- | Network communication protocol used by the fleet.
ipProtocol :: Lens' IPPermission IPProtocol
ipProtocol = lens _ipProtocol (\ s a -> s{_ipProtocol = a})

instance FromJSON IPPermission where
        parseJSON
          = withObject "IPPermission"
              (\ x ->
                 IPPermission' <$>
                   (x .: "FromPort") <*> (x .: "ToPort") <*>
                     (x .: "IpRange")
                     <*> (x .: "Protocol"))

instance Hashable IPPermission where

instance NFData IPPermission where

instance ToJSON IPPermission where
        toJSON IPPermission'{..}
          = object
              (catMaybes
                 [Just ("FromPort" .= _ipFromPort),
                  Just ("ToPort" .= _ipToPort),
                  Just ("IpRange" .= _ipIPRange),
                  Just ("Protocol" .= _ipProtocol)])
