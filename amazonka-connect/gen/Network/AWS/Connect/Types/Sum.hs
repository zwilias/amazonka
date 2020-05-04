{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Sum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Connect.Types.Sum where

import Network.AWS.Prelude

data Channel
  = Chat
  | Voice
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Channel where
    parser = takeLowerText >>= \case
        "chat" -> pure Chat
        "voice" -> pure Voice
        e -> fromTextError $ "Failure parsing Channel from value: '" <> e
           <> "'. Accepted values: chat, voice"

instance ToText Channel where
    toText = \case
        Chat -> "CHAT"
        Voice -> "VOICE"

instance Hashable     Channel
instance NFData       Channel
instance ToByteString Channel
instance ToQuery      Channel
instance ToHeader     Channel

instance ToJSON Channel where
    toJSON = toJSONText

instance FromJSON Channel where
    parseJSON = parseJSONText "Channel"

data Comparison =
  LT'
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Comparison where
    parser = takeLowerText >>= \case
        "lt" -> pure LT'
        e -> fromTextError $ "Failure parsing Comparison from value: '" <> e
           <> "'. Accepted values: lt"

instance ToText Comparison where
    toText = \case
        LT' -> "LT"

instance Hashable     Comparison
instance NFData       Comparison
instance ToByteString Comparison
instance ToQuery      Comparison
instance ToHeader     Comparison

instance ToJSON Comparison where
    toJSON = toJSONText

instance FromJSON Comparison where
    parseJSON = parseJSONText "Comparison"

data ContactFlowType
  = AgentHold
  | AgentTransfer
  | AgentWhisper
  | ContactFlow
  | CustomerHold
  | CustomerQueue
  | CustomerWhisper
  | OutboundWhisper
  | QueueTransfer
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ContactFlowType where
    parser = takeLowerText >>= \case
        "agent_hold" -> pure AgentHold
        "agent_transfer" -> pure AgentTransfer
        "agent_whisper" -> pure AgentWhisper
        "contact_flow" -> pure ContactFlow
        "customer_hold" -> pure CustomerHold
        "customer_queue" -> pure CustomerQueue
        "customer_whisper" -> pure CustomerWhisper
        "outbound_whisper" -> pure OutboundWhisper
        "queue_transfer" -> pure QueueTransfer
        e -> fromTextError $ "Failure parsing ContactFlowType from value: '" <> e
           <> "'. Accepted values: agent_hold, agent_transfer, agent_whisper, contact_flow, customer_hold, customer_queue, customer_whisper, outbound_whisper, queue_transfer"

instance ToText ContactFlowType where
    toText = \case
        AgentHold -> "AGENT_HOLD"
        AgentTransfer -> "AGENT_TRANSFER"
        AgentWhisper -> "AGENT_WHISPER"
        ContactFlow -> "CONTACT_FLOW"
        CustomerHold -> "CUSTOMER_HOLD"
        CustomerQueue -> "CUSTOMER_QUEUE"
        CustomerWhisper -> "CUSTOMER_WHISPER"
        OutboundWhisper -> "OUTBOUND_WHISPER"
        QueueTransfer -> "QUEUE_TRANSFER"

instance Hashable     ContactFlowType
instance NFData       ContactFlowType
instance ToByteString ContactFlowType
instance ToQuery      ContactFlowType
instance ToHeader     ContactFlowType

instance ToJSON ContactFlowType where
    toJSON = toJSONText

instance FromJSON ContactFlowType where
    parseJSON = parseJSONText "ContactFlowType"

-- | The current metric names.
--
--
data CurrentMetricName
  = AgentsAfterContactWork
  | AgentsAvailable
  | AgentsError
  | AgentsNonProductive
  | AgentsOnCall
  | AgentsOnContact
  | AgentsOnline
  | AgentsStaffed
  | ContactsInQueue
  | ContactsScheduled
  | OldestContactAge
  | SlotsActive
  | SlotsAvailable
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText CurrentMetricName where
    parser = takeLowerText >>= \case
        "agents_after_contact_work" -> pure AgentsAfterContactWork
        "agents_available" -> pure AgentsAvailable
        "agents_error" -> pure AgentsError
        "agents_non_productive" -> pure AgentsNonProductive
        "agents_on_call" -> pure AgentsOnCall
        "agents_on_contact" -> pure AgentsOnContact
        "agents_online" -> pure AgentsOnline
        "agents_staffed" -> pure AgentsStaffed
        "contacts_in_queue" -> pure ContactsInQueue
        "contacts_scheduled" -> pure ContactsScheduled
        "oldest_contact_age" -> pure OldestContactAge
        "slots_active" -> pure SlotsActive
        "slots_available" -> pure SlotsAvailable
        e -> fromTextError $ "Failure parsing CurrentMetricName from value: '" <> e
           <> "'. Accepted values: agents_after_contact_work, agents_available, agents_error, agents_non_productive, agents_on_call, agents_on_contact, agents_online, agents_staffed, contacts_in_queue, contacts_scheduled, oldest_contact_age, slots_active, slots_available"

instance ToText CurrentMetricName where
    toText = \case
        AgentsAfterContactWork -> "AGENTS_AFTER_CONTACT_WORK"
        AgentsAvailable -> "AGENTS_AVAILABLE"
        AgentsError -> "AGENTS_ERROR"
        AgentsNonProductive -> "AGENTS_NON_PRODUCTIVE"
        AgentsOnCall -> "AGENTS_ON_CALL"
        AgentsOnContact -> "AGENTS_ON_CONTACT"
        AgentsOnline -> "AGENTS_ONLINE"
        AgentsStaffed -> "AGENTS_STAFFED"
        ContactsInQueue -> "CONTACTS_IN_QUEUE"
        ContactsScheduled -> "CONTACTS_SCHEDULED"
        OldestContactAge -> "OLDEST_CONTACT_AGE"
        SlotsActive -> "SLOTS_ACTIVE"
        SlotsAvailable -> "SLOTS_AVAILABLE"

instance Hashable     CurrentMetricName
instance NFData       CurrentMetricName
instance ToByteString CurrentMetricName
instance ToQuery      CurrentMetricName
instance ToHeader     CurrentMetricName

instance ToJSON CurrentMetricName where
    toJSON = toJSONText

instance FromJSON CurrentMetricName where
    parseJSON = parseJSONText "CurrentMetricName"

data Grouping
  = Channel
  | Queue
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Grouping where
    parser = takeLowerText >>= \case
        "channel" -> pure Channel
        "queue" -> pure Queue
        e -> fromTextError $ "Failure parsing Grouping from value: '" <> e
           <> "'. Accepted values: channel, queue"

instance ToText Grouping where
    toText = \case
        Channel -> "CHANNEL"
        Queue -> "QUEUE"

instance Hashable     Grouping
instance NFData       Grouping
instance ToByteString Grouping
instance ToQuery      Grouping
instance ToHeader     Grouping

instance ToJSON Grouping where
    toJSON = toJSONText

-- | The historical metric names.
--
--
data HistoricalMetricName
  = APIContactsHandled
  | AbandonTime
  | AfterContactWorkTime
  | CallbackContactsHandled
  | ContactsAbandoned
  | ContactsAgentHungUpFirst
  | ContactsConsulted
  | ContactsHandled
  | ContactsHandledIncoming
  | ContactsHandledOutbound
  | ContactsHoldAbandons
  | ContactsMissed
  | ContactsQueued
  | ContactsTransferredIn
  | ContactsTransferredInFromQueue
  | ContactsTransferredOut
  | ContactsTransferredOutFromQueue
  | HandleTime
  | HoldTime
  | InteractionAndHoldTime
  | InteractionTime
  | Occupancy
  | QueueAnswerTime
  | QueuedTime
  | ServiceLevel
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText HistoricalMetricName where
    parser = takeLowerText >>= \case
        "api_contacts_handled" -> pure APIContactsHandled
        "abandon_time" -> pure AbandonTime
        "after_contact_work_time" -> pure AfterContactWorkTime
        "callback_contacts_handled" -> pure CallbackContactsHandled
        "contacts_abandoned" -> pure ContactsAbandoned
        "contacts_agent_hung_up_first" -> pure ContactsAgentHungUpFirst
        "contacts_consulted" -> pure ContactsConsulted
        "contacts_handled" -> pure ContactsHandled
        "contacts_handled_incoming" -> pure ContactsHandledIncoming
        "contacts_handled_outbound" -> pure ContactsHandledOutbound
        "contacts_hold_abandons" -> pure ContactsHoldAbandons
        "contacts_missed" -> pure ContactsMissed
        "contacts_queued" -> pure ContactsQueued
        "contacts_transferred_in" -> pure ContactsTransferredIn
        "contacts_transferred_in_from_queue" -> pure ContactsTransferredInFromQueue
        "contacts_transferred_out" -> pure ContactsTransferredOut
        "contacts_transferred_out_from_queue" -> pure ContactsTransferredOutFromQueue
        "handle_time" -> pure HandleTime
        "hold_time" -> pure HoldTime
        "interaction_and_hold_time" -> pure InteractionAndHoldTime
        "interaction_time" -> pure InteractionTime
        "occupancy" -> pure Occupancy
        "queue_answer_time" -> pure QueueAnswerTime
        "queued_time" -> pure QueuedTime
        "service_level" -> pure ServiceLevel
        e -> fromTextError $ "Failure parsing HistoricalMetricName from value: '" <> e
           <> "'. Accepted values: api_contacts_handled, abandon_time, after_contact_work_time, callback_contacts_handled, contacts_abandoned, contacts_agent_hung_up_first, contacts_consulted, contacts_handled, contacts_handled_incoming, contacts_handled_outbound, contacts_hold_abandons, contacts_missed, contacts_queued, contacts_transferred_in, contacts_transferred_in_from_queue, contacts_transferred_out, contacts_transferred_out_from_queue, handle_time, hold_time, interaction_and_hold_time, interaction_time, occupancy, queue_answer_time, queued_time, service_level"

instance ToText HistoricalMetricName where
    toText = \case
        APIContactsHandled -> "API_CONTACTS_HANDLED"
        AbandonTime -> "ABANDON_TIME"
        AfterContactWorkTime -> "AFTER_CONTACT_WORK_TIME"
        CallbackContactsHandled -> "CALLBACK_CONTACTS_HANDLED"
        ContactsAbandoned -> "CONTACTS_ABANDONED"
        ContactsAgentHungUpFirst -> "CONTACTS_AGENT_HUNG_UP_FIRST"
        ContactsConsulted -> "CONTACTS_CONSULTED"
        ContactsHandled -> "CONTACTS_HANDLED"
        ContactsHandledIncoming -> "CONTACTS_HANDLED_INCOMING"
        ContactsHandledOutbound -> "CONTACTS_HANDLED_OUTBOUND"
        ContactsHoldAbandons -> "CONTACTS_HOLD_ABANDONS"
        ContactsMissed -> "CONTACTS_MISSED"
        ContactsQueued -> "CONTACTS_QUEUED"
        ContactsTransferredIn -> "CONTACTS_TRANSFERRED_IN"
        ContactsTransferredInFromQueue -> "CONTACTS_TRANSFERRED_IN_FROM_QUEUE"
        ContactsTransferredOut -> "CONTACTS_TRANSFERRED_OUT"
        ContactsTransferredOutFromQueue -> "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"
        HandleTime -> "HANDLE_TIME"
        HoldTime -> "HOLD_TIME"
        InteractionAndHoldTime -> "INTERACTION_AND_HOLD_TIME"
        InteractionTime -> "INTERACTION_TIME"
        Occupancy -> "OCCUPANCY"
        QueueAnswerTime -> "QUEUE_ANSWER_TIME"
        QueuedTime -> "QUEUED_TIME"
        ServiceLevel -> "SERVICE_LEVEL"

instance Hashable     HistoricalMetricName
instance NFData       HistoricalMetricName
instance ToByteString HistoricalMetricName
instance ToQuery      HistoricalMetricName
instance ToHeader     HistoricalMetricName

instance ToJSON HistoricalMetricName where
    toJSON = toJSONText

instance FromJSON HistoricalMetricName where
    parseJSON = parseJSONText "HistoricalMetricName"

data PhoneNumberCountryCode
  = PNCCAD
  | PNCCAE
  | PNCCAF
  | PNCCAG
  | PNCCAI
  | PNCCAL
  | PNCCAM
  | PNCCAN
  | PNCCAO
  | PNCCAQ
  | PNCCAR
  | PNCCAS
  | PNCCAT
  | PNCCAU
  | PNCCAW
  | PNCCAZ
  | PNCCBA
  | PNCCBB
  | PNCCBD
  | PNCCBE
  | PNCCBF
  | PNCCBG
  | PNCCBH
  | PNCCBI
  | PNCCBJ
  | PNCCBL
  | PNCCBM
  | PNCCBN
  | PNCCBO
  | PNCCBR
  | PNCCBS
  | PNCCBT
  | PNCCBW
  | PNCCBY
  | PNCCBZ
  | PNCCCA
  | PNCCCC
  | PNCCCD
  | PNCCCF
  | PNCCCG
  | PNCCCH
  | PNCCCI
  | PNCCCK
  | PNCCCL
  | PNCCCM
  | PNCCCN
  | PNCCCO
  | PNCCCR
  | PNCCCU
  | PNCCCV
  | PNCCCW
  | PNCCCX
  | PNCCCY
  | PNCCCZ
  | PNCCDE
  | PNCCDJ
  | PNCCDK
  | PNCCDM
  | PNCCDO
  | PNCCDZ
  | PNCCEC
  | PNCCEE
  | PNCCEG
  | PNCCEH
  | PNCCER
  | PNCCES
  | PNCCET
  | PNCCFI
  | PNCCFJ
  | PNCCFK
  | PNCCFM
  | PNCCFO
  | PNCCFR
  | PNCCGA
  | PNCCGB
  | PNCCGD
  | PNCCGE
  | PNCCGG
  | PNCCGH
  | PNCCGI
  | PNCCGL
  | PNCCGM
  | PNCCGN
  | PNCCGQ
  | PNCCGR
  | PNCCGT'
  | PNCCGU
  | PNCCGW
  | PNCCGY
  | PNCCHK
  | PNCCHN
  | PNCCHR
  | PNCCHT
  | PNCCHU
  | PNCCIE
  | PNCCIL
  | PNCCIM
  | PNCCIN
  | PNCCIO
  | PNCCIQ
  | PNCCIR
  | PNCCIS
  | PNCCIT
  | PNCCId
  | PNCCJE
  | PNCCJM
  | PNCCJO
  | PNCCJP
  | PNCCKE
  | PNCCKG
  | PNCCKH
  | PNCCKI
  | PNCCKM
  | PNCCKN
  | PNCCKP
  | PNCCKR
  | PNCCKW
  | PNCCKY
  | PNCCKZ
  | PNCCLA
  | PNCCLB
  | PNCCLC
  | PNCCLI
  | PNCCLK
  | PNCCLR
  | PNCCLS
  | PNCCLT'
  | PNCCLU
  | PNCCLV
  | PNCCLY
  | PNCCMA
  | PNCCMC
  | PNCCMD
  | PNCCME
  | PNCCMF
  | PNCCMG
  | PNCCMH
  | PNCCMK
  | PNCCML
  | PNCCMM
  | PNCCMN
  | PNCCMO
  | PNCCMP
  | PNCCMR
  | PNCCMS
  | PNCCMT
  | PNCCMU
  | PNCCMV
  | PNCCMW
  | PNCCMX
  | PNCCMY
  | PNCCMZ
  | PNCCNA
  | PNCCNC
  | PNCCNE
  | PNCCNG
  | PNCCNI
  | PNCCNL
  | PNCCNO
  | PNCCNP
  | PNCCNR
  | PNCCNU
  | PNCCNZ
  | PNCCOM
  | PNCCPA
  | PNCCPE
  | PNCCPF
  | PNCCPG
  | PNCCPH
  | PNCCPK
  | PNCCPL
  | PNCCPM
  | PNCCPN
  | PNCCPR
  | PNCCPT
  | PNCCPW
  | PNCCPY
  | PNCCQA
  | PNCCRE
  | PNCCRO
  | PNCCRS
  | PNCCRU
  | PNCCRW
  | PNCCSA
  | PNCCSB
  | PNCCSC
  | PNCCSD
  | PNCCSE
  | PNCCSG
  | PNCCSH
  | PNCCSI
  | PNCCSJ
  | PNCCSK
  | PNCCSL
  | PNCCSM
  | PNCCSN
  | PNCCSO
  | PNCCSR
  | PNCCST
  | PNCCSV
  | PNCCSX
  | PNCCSY
  | PNCCSZ
  | PNCCTC
  | PNCCTD
  | PNCCTG
  | PNCCTH
  | PNCCTJ
  | PNCCTK
  | PNCCTL
  | PNCCTM
  | PNCCTN
  | PNCCTO
  | PNCCTR
  | PNCCTT
  | PNCCTV
  | PNCCTW
  | PNCCTZ
  | PNCCUA
  | PNCCUG
  | PNCCUS
  | PNCCUY
  | PNCCUZ
  | PNCCVA
  | PNCCVC
  | PNCCVE
  | PNCCVG
  | PNCCVI
  | PNCCVN
  | PNCCVU
  | PNCCWF
  | PNCCWS
  | PNCCYE
  | PNCCYT
  | PNCCZA
  | PNCCZM
  | PNCCZW
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText PhoneNumberCountryCode where
    parser = takeLowerText >>= \case
        "ad" -> pure PNCCAD
        "ae" -> pure PNCCAE
        "af" -> pure PNCCAF
        "ag" -> pure PNCCAG
        "ai" -> pure PNCCAI
        "al" -> pure PNCCAL
        "am" -> pure PNCCAM
        "an" -> pure PNCCAN
        "ao" -> pure PNCCAO
        "aq" -> pure PNCCAQ
        "ar" -> pure PNCCAR
        "as" -> pure PNCCAS
        "at" -> pure PNCCAT
        "au" -> pure PNCCAU
        "aw" -> pure PNCCAW
        "az" -> pure PNCCAZ
        "ba" -> pure PNCCBA
        "bb" -> pure PNCCBB
        "bd" -> pure PNCCBD
        "be" -> pure PNCCBE
        "bf" -> pure PNCCBF
        "bg" -> pure PNCCBG
        "bh" -> pure PNCCBH
        "bi" -> pure PNCCBI
        "bj" -> pure PNCCBJ
        "bl" -> pure PNCCBL
        "bm" -> pure PNCCBM
        "bn" -> pure PNCCBN
        "bo" -> pure PNCCBO
        "br" -> pure PNCCBR
        "bs" -> pure PNCCBS
        "bt" -> pure PNCCBT
        "bw" -> pure PNCCBW
        "by" -> pure PNCCBY
        "bz" -> pure PNCCBZ
        "ca" -> pure PNCCCA
        "cc" -> pure PNCCCC
        "cd" -> pure PNCCCD
        "cf" -> pure PNCCCF
        "cg" -> pure PNCCCG
        "ch" -> pure PNCCCH
        "ci" -> pure PNCCCI
        "ck" -> pure PNCCCK
        "cl" -> pure PNCCCL
        "cm" -> pure PNCCCM
        "cn" -> pure PNCCCN
        "co" -> pure PNCCCO
        "cr" -> pure PNCCCR
        "cu" -> pure PNCCCU
        "cv" -> pure PNCCCV
        "cw" -> pure PNCCCW
        "cx" -> pure PNCCCX
        "cy" -> pure PNCCCY
        "cz" -> pure PNCCCZ
        "de" -> pure PNCCDE
        "dj" -> pure PNCCDJ
        "dk" -> pure PNCCDK
        "dm" -> pure PNCCDM
        "do" -> pure PNCCDO
        "dz" -> pure PNCCDZ
        "ec" -> pure PNCCEC
        "ee" -> pure PNCCEE
        "eg" -> pure PNCCEG
        "eh" -> pure PNCCEH
        "er" -> pure PNCCER
        "es" -> pure PNCCES
        "et" -> pure PNCCET
        "fi" -> pure PNCCFI
        "fj" -> pure PNCCFJ
        "fk" -> pure PNCCFK
        "fm" -> pure PNCCFM
        "fo" -> pure PNCCFO
        "fr" -> pure PNCCFR
        "ga" -> pure PNCCGA
        "gb" -> pure PNCCGB
        "gd" -> pure PNCCGD
        "ge" -> pure PNCCGE
        "gg" -> pure PNCCGG
        "gh" -> pure PNCCGH
        "gi" -> pure PNCCGI
        "gl" -> pure PNCCGL
        "gm" -> pure PNCCGM
        "gn" -> pure PNCCGN
        "gq" -> pure PNCCGQ
        "gr" -> pure PNCCGR
        "gt" -> pure PNCCGT'
        "gu" -> pure PNCCGU
        "gw" -> pure PNCCGW
        "gy" -> pure PNCCGY
        "hk" -> pure PNCCHK
        "hn" -> pure PNCCHN
        "hr" -> pure PNCCHR
        "ht" -> pure PNCCHT
        "hu" -> pure PNCCHU
        "ie" -> pure PNCCIE
        "il" -> pure PNCCIL
        "im" -> pure PNCCIM
        "in" -> pure PNCCIN
        "io" -> pure PNCCIO
        "iq" -> pure PNCCIQ
        "ir" -> pure PNCCIR
        "is" -> pure PNCCIS
        "it" -> pure PNCCIT
        "id" -> pure PNCCId
        "je" -> pure PNCCJE
        "jm" -> pure PNCCJM
        "jo" -> pure PNCCJO
        "jp" -> pure PNCCJP
        "ke" -> pure PNCCKE
        "kg" -> pure PNCCKG
        "kh" -> pure PNCCKH
        "ki" -> pure PNCCKI
        "km" -> pure PNCCKM
        "kn" -> pure PNCCKN
        "kp" -> pure PNCCKP
        "kr" -> pure PNCCKR
        "kw" -> pure PNCCKW
        "ky" -> pure PNCCKY
        "kz" -> pure PNCCKZ
        "la" -> pure PNCCLA
        "lb" -> pure PNCCLB
        "lc" -> pure PNCCLC
        "li" -> pure PNCCLI
        "lk" -> pure PNCCLK
        "lr" -> pure PNCCLR
        "ls" -> pure PNCCLS
        "lt" -> pure PNCCLT'
        "lu" -> pure PNCCLU
        "lv" -> pure PNCCLV
        "ly" -> pure PNCCLY
        "ma" -> pure PNCCMA
        "mc" -> pure PNCCMC
        "md" -> pure PNCCMD
        "me" -> pure PNCCME
        "mf" -> pure PNCCMF
        "mg" -> pure PNCCMG
        "mh" -> pure PNCCMH
        "mk" -> pure PNCCMK
        "ml" -> pure PNCCML
        "mm" -> pure PNCCMM
        "mn" -> pure PNCCMN
        "mo" -> pure PNCCMO
        "mp" -> pure PNCCMP
        "mr" -> pure PNCCMR
        "ms" -> pure PNCCMS
        "mt" -> pure PNCCMT
        "mu" -> pure PNCCMU
        "mv" -> pure PNCCMV
        "mw" -> pure PNCCMW
        "mx" -> pure PNCCMX
        "my" -> pure PNCCMY
        "mz" -> pure PNCCMZ
        "na" -> pure PNCCNA
        "nc" -> pure PNCCNC
        "ne" -> pure PNCCNE
        "ng" -> pure PNCCNG
        "ni" -> pure PNCCNI
        "nl" -> pure PNCCNL
        "no" -> pure PNCCNO
        "np" -> pure PNCCNP
        "nr" -> pure PNCCNR
        "nu" -> pure PNCCNU
        "nz" -> pure PNCCNZ
        "om" -> pure PNCCOM
        "pa" -> pure PNCCPA
        "pe" -> pure PNCCPE
        "pf" -> pure PNCCPF
        "pg" -> pure PNCCPG
        "ph" -> pure PNCCPH
        "pk" -> pure PNCCPK
        "pl" -> pure PNCCPL
        "pm" -> pure PNCCPM
        "pn" -> pure PNCCPN
        "pr" -> pure PNCCPR
        "pt" -> pure PNCCPT
        "pw" -> pure PNCCPW
        "py" -> pure PNCCPY
        "qa" -> pure PNCCQA
        "re" -> pure PNCCRE
        "ro" -> pure PNCCRO
        "rs" -> pure PNCCRS
        "ru" -> pure PNCCRU
        "rw" -> pure PNCCRW
        "sa" -> pure PNCCSA
        "sb" -> pure PNCCSB
        "sc" -> pure PNCCSC
        "sd" -> pure PNCCSD
        "se" -> pure PNCCSE
        "sg" -> pure PNCCSG
        "sh" -> pure PNCCSH
        "si" -> pure PNCCSI
        "sj" -> pure PNCCSJ
        "sk" -> pure PNCCSK
        "sl" -> pure PNCCSL
        "sm" -> pure PNCCSM
        "sn" -> pure PNCCSN
        "so" -> pure PNCCSO
        "sr" -> pure PNCCSR
        "st" -> pure PNCCST
        "sv" -> pure PNCCSV
        "sx" -> pure PNCCSX
        "sy" -> pure PNCCSY
        "sz" -> pure PNCCSZ
        "tc" -> pure PNCCTC
        "td" -> pure PNCCTD
        "tg" -> pure PNCCTG
        "th" -> pure PNCCTH
        "tj" -> pure PNCCTJ
        "tk" -> pure PNCCTK
        "tl" -> pure PNCCTL
        "tm" -> pure PNCCTM
        "tn" -> pure PNCCTN
        "to" -> pure PNCCTO
        "tr" -> pure PNCCTR
        "tt" -> pure PNCCTT
        "tv" -> pure PNCCTV
        "tw" -> pure PNCCTW
        "tz" -> pure PNCCTZ
        "ua" -> pure PNCCUA
        "ug" -> pure PNCCUG
        "us" -> pure PNCCUS
        "uy" -> pure PNCCUY
        "uz" -> pure PNCCUZ
        "va" -> pure PNCCVA
        "vc" -> pure PNCCVC
        "ve" -> pure PNCCVE
        "vg" -> pure PNCCVG
        "vi" -> pure PNCCVI
        "vn" -> pure PNCCVN
        "vu" -> pure PNCCVU
        "wf" -> pure PNCCWF
        "ws" -> pure PNCCWS
        "ye" -> pure PNCCYE
        "yt" -> pure PNCCYT
        "za" -> pure PNCCZA
        "zm" -> pure PNCCZM
        "zw" -> pure PNCCZW
        e -> fromTextError $ "Failure parsing PhoneNumberCountryCode from value: '" <> e
           <> "'. Accepted values: ad, ae, af, ag, ai, al, am, an, ao, aq, ar, as, at, au, aw, az, ba, bb, bd, be, bf, bg, bh, bi, bj, bl, bm, bn, bo, br, bs, bt, bw, by, bz, ca, cc, cd, cf, cg, ch, ci, ck, cl, cm, cn, co, cr, cu, cv, cw, cx, cy, cz, de, dj, dk, dm, do, dz, ec, ee, eg, eh, er, es, et, fi, fj, fk, fm, fo, fr, ga, gb, gd, ge, gg, gh, gi, gl, gm, gn, gq, gr, gt, gu, gw, gy, hk, hn, hr, ht, hu, ie, il, im, in, io, iq, ir, is, it, id, je, jm, jo, jp, ke, kg, kh, ki, km, kn, kp, kr, kw, ky, kz, la, lb, lc, li, lk, lr, ls, lt, lu, lv, ly, ma, mc, md, me, mf, mg, mh, mk, ml, mm, mn, mo, mp, mr, ms, mt, mu, mv, mw, mx, my, mz, na, nc, ne, ng, ni, nl, no, np, nr, nu, nz, om, pa, pe, pf, pg, ph, pk, pl, pm, pn, pr, pt, pw, py, qa, re, ro, rs, ru, rw, sa, sb, sc, sd, se, sg, sh, si, sj, sk, sl, sm, sn, so, sr, st, sv, sx, sy, sz, tc, td, tg, th, tj, tk, tl, tm, tn, to, tr, tt, tv, tw, tz, ua, ug, us, uy, uz, va, vc, ve, vg, vi, vn, vu, wf, ws, ye, yt, za, zm, zw"

instance ToText PhoneNumberCountryCode where
    toText = \case
        PNCCAD -> "AD"
        PNCCAE -> "AE"
        PNCCAF -> "AF"
        PNCCAG -> "AG"
        PNCCAI -> "AI"
        PNCCAL -> "AL"
        PNCCAM -> "AM"
        PNCCAN -> "AN"
        PNCCAO -> "AO"
        PNCCAQ -> "AQ"
        PNCCAR -> "AR"
        PNCCAS -> "AS"
        PNCCAT -> "AT"
        PNCCAU -> "AU"
        PNCCAW -> "AW"
        PNCCAZ -> "AZ"
        PNCCBA -> "BA"
        PNCCBB -> "BB"
        PNCCBD -> "BD"
        PNCCBE -> "BE"
        PNCCBF -> "BF"
        PNCCBG -> "BG"
        PNCCBH -> "BH"
        PNCCBI -> "BI"
        PNCCBJ -> "BJ"
        PNCCBL -> "BL"
        PNCCBM -> "BM"
        PNCCBN -> "BN"
        PNCCBO -> "BO"
        PNCCBR -> "BR"
        PNCCBS -> "BS"
        PNCCBT -> "BT"
        PNCCBW -> "BW"
        PNCCBY -> "BY"
        PNCCBZ -> "BZ"
        PNCCCA -> "CA"
        PNCCCC -> "CC"
        PNCCCD -> "CD"
        PNCCCF -> "CF"
        PNCCCG -> "CG"
        PNCCCH -> "CH"
        PNCCCI -> "CI"
        PNCCCK -> "CK"
        PNCCCL -> "CL"
        PNCCCM -> "CM"
        PNCCCN -> "CN"
        PNCCCO -> "CO"
        PNCCCR -> "CR"
        PNCCCU -> "CU"
        PNCCCV -> "CV"
        PNCCCW -> "CW"
        PNCCCX -> "CX"
        PNCCCY -> "CY"
        PNCCCZ -> "CZ"
        PNCCDE -> "DE"
        PNCCDJ -> "DJ"
        PNCCDK -> "DK"
        PNCCDM -> "DM"
        PNCCDO -> "DO"
        PNCCDZ -> "DZ"
        PNCCEC -> "EC"
        PNCCEE -> "EE"
        PNCCEG -> "EG"
        PNCCEH -> "EH"
        PNCCER -> "ER"
        PNCCES -> "ES"
        PNCCET -> "ET"
        PNCCFI -> "FI"
        PNCCFJ -> "FJ"
        PNCCFK -> "FK"
        PNCCFM -> "FM"
        PNCCFO -> "FO"
        PNCCFR -> "FR"
        PNCCGA -> "GA"
        PNCCGB -> "GB"
        PNCCGD -> "GD"
        PNCCGE -> "GE"
        PNCCGG -> "GG"
        PNCCGH -> "GH"
        PNCCGI -> "GI"
        PNCCGL -> "GL"
        PNCCGM -> "GM"
        PNCCGN -> "GN"
        PNCCGQ -> "GQ"
        PNCCGR -> "GR"
        PNCCGT' -> "GT"
        PNCCGU -> "GU"
        PNCCGW -> "GW"
        PNCCGY -> "GY"
        PNCCHK -> "HK"
        PNCCHN -> "HN"
        PNCCHR -> "HR"
        PNCCHT -> "HT"
        PNCCHU -> "HU"
        PNCCIE -> "IE"
        PNCCIL -> "IL"
        PNCCIM -> "IM"
        PNCCIN -> "IN"
        PNCCIO -> "IO"
        PNCCIQ -> "IQ"
        PNCCIR -> "IR"
        PNCCIS -> "IS"
        PNCCIT -> "IT"
        PNCCId -> "ID"
        PNCCJE -> "JE"
        PNCCJM -> "JM"
        PNCCJO -> "JO"
        PNCCJP -> "JP"
        PNCCKE -> "KE"
        PNCCKG -> "KG"
        PNCCKH -> "KH"
        PNCCKI -> "KI"
        PNCCKM -> "KM"
        PNCCKN -> "KN"
        PNCCKP -> "KP"
        PNCCKR -> "KR"
        PNCCKW -> "KW"
        PNCCKY -> "KY"
        PNCCKZ -> "KZ"
        PNCCLA -> "LA"
        PNCCLB -> "LB"
        PNCCLC -> "LC"
        PNCCLI -> "LI"
        PNCCLK -> "LK"
        PNCCLR -> "LR"
        PNCCLS -> "LS"
        PNCCLT' -> "LT"
        PNCCLU -> "LU"
        PNCCLV -> "LV"
        PNCCLY -> "LY"
        PNCCMA -> "MA"
        PNCCMC -> "MC"
        PNCCMD -> "MD"
        PNCCME -> "ME"
        PNCCMF -> "MF"
        PNCCMG -> "MG"
        PNCCMH -> "MH"
        PNCCMK -> "MK"
        PNCCML -> "ML"
        PNCCMM -> "MM"
        PNCCMN -> "MN"
        PNCCMO -> "MO"
        PNCCMP -> "MP"
        PNCCMR -> "MR"
        PNCCMS -> "MS"
        PNCCMT -> "MT"
        PNCCMU -> "MU"
        PNCCMV -> "MV"
        PNCCMW -> "MW"
        PNCCMX -> "MX"
        PNCCMY -> "MY"
        PNCCMZ -> "MZ"
        PNCCNA -> "NA"
        PNCCNC -> "NC"
        PNCCNE -> "NE"
        PNCCNG -> "NG"
        PNCCNI -> "NI"
        PNCCNL -> "NL"
        PNCCNO -> "NO"
        PNCCNP -> "NP"
        PNCCNR -> "NR"
        PNCCNU -> "NU"
        PNCCNZ -> "NZ"
        PNCCOM -> "OM"
        PNCCPA -> "PA"
        PNCCPE -> "PE"
        PNCCPF -> "PF"
        PNCCPG -> "PG"
        PNCCPH -> "PH"
        PNCCPK -> "PK"
        PNCCPL -> "PL"
        PNCCPM -> "PM"
        PNCCPN -> "PN"
        PNCCPR -> "PR"
        PNCCPT -> "PT"
        PNCCPW -> "PW"
        PNCCPY -> "PY"
        PNCCQA -> "QA"
        PNCCRE -> "RE"
        PNCCRO -> "RO"
        PNCCRS -> "RS"
        PNCCRU -> "RU"
        PNCCRW -> "RW"
        PNCCSA -> "SA"
        PNCCSB -> "SB"
        PNCCSC -> "SC"
        PNCCSD -> "SD"
        PNCCSE -> "SE"
        PNCCSG -> "SG"
        PNCCSH -> "SH"
        PNCCSI -> "SI"
        PNCCSJ -> "SJ"
        PNCCSK -> "SK"
        PNCCSL -> "SL"
        PNCCSM -> "SM"
        PNCCSN -> "SN"
        PNCCSO -> "SO"
        PNCCSR -> "SR"
        PNCCST -> "ST"
        PNCCSV -> "SV"
        PNCCSX -> "SX"
        PNCCSY -> "SY"
        PNCCSZ -> "SZ"
        PNCCTC -> "TC"
        PNCCTD -> "TD"
        PNCCTG -> "TG"
        PNCCTH -> "TH"
        PNCCTJ -> "TJ"
        PNCCTK -> "TK"
        PNCCTL -> "TL"
        PNCCTM -> "TM"
        PNCCTN -> "TN"
        PNCCTO -> "TO"
        PNCCTR -> "TR"
        PNCCTT -> "TT"
        PNCCTV -> "TV"
        PNCCTW -> "TW"
        PNCCTZ -> "TZ"
        PNCCUA -> "UA"
        PNCCUG -> "UG"
        PNCCUS -> "US"
        PNCCUY -> "UY"
        PNCCUZ -> "UZ"
        PNCCVA -> "VA"
        PNCCVC -> "VC"
        PNCCVE -> "VE"
        PNCCVG -> "VG"
        PNCCVI -> "VI"
        PNCCVN -> "VN"
        PNCCVU -> "VU"
        PNCCWF -> "WF"
        PNCCWS -> "WS"
        PNCCYE -> "YE"
        PNCCYT -> "YT"
        PNCCZA -> "ZA"
        PNCCZM -> "ZM"
        PNCCZW -> "ZW"

instance Hashable     PhoneNumberCountryCode
instance NFData       PhoneNumberCountryCode
instance ToByteString PhoneNumberCountryCode
instance ToQuery      PhoneNumberCountryCode
instance ToHeader     PhoneNumberCountryCode

instance ToJSON PhoneNumberCountryCode where
    toJSON = toJSONText

instance FromJSON PhoneNumberCountryCode where
    parseJSON = parseJSONText "PhoneNumberCountryCode"

data PhoneNumberType
  = Did
  | TollFree
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText PhoneNumberType where
    parser = takeLowerText >>= \case
        "did" -> pure Did
        "toll_free" -> pure TollFree
        e -> fromTextError $ "Failure parsing PhoneNumberType from value: '" <> e
           <> "'. Accepted values: did, toll_free"

instance ToText PhoneNumberType where
    toText = \case
        Did -> "DID"
        TollFree -> "TOLL_FREE"

instance Hashable     PhoneNumberType
instance NFData       PhoneNumberType
instance ToByteString PhoneNumberType
instance ToQuery      PhoneNumberType
instance ToHeader     PhoneNumberType

instance ToJSON PhoneNumberType where
    toJSON = toJSONText

instance FromJSON PhoneNumberType where
    parseJSON = parseJSONText "PhoneNumberType"

data PhoneType
  = DeskPhone
  | SoftPhone
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText PhoneType where
    parser = takeLowerText >>= \case
        "desk_phone" -> pure DeskPhone
        "soft_phone" -> pure SoftPhone
        e -> fromTextError $ "Failure parsing PhoneType from value: '" <> e
           <> "'. Accepted values: desk_phone, soft_phone"

instance ToText PhoneType where
    toText = \case
        DeskPhone -> "DESK_PHONE"
        SoftPhone -> "SOFT_PHONE"

instance Hashable     PhoneType
instance NFData       PhoneType
instance ToByteString PhoneType
instance ToQuery      PhoneType
instance ToHeader     PhoneType

instance ToJSON PhoneType where
    toJSON = toJSONText

instance FromJSON PhoneType where
    parseJSON = parseJSONText "PhoneType"

data QueueType
  = Agent
  | Standard
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText QueueType where
    parser = takeLowerText >>= \case
        "agent" -> pure Agent
        "standard" -> pure Standard
        e -> fromTextError $ "Failure parsing QueueType from value: '" <> e
           <> "'. Accepted values: agent, standard"

instance ToText QueueType where
    toText = \case
        Agent -> "AGENT"
        Standard -> "STANDARD"

instance Hashable     QueueType
instance NFData       QueueType
instance ToByteString QueueType
instance ToQuery      QueueType
instance ToHeader     QueueType

instance ToJSON QueueType where
    toJSON = toJSONText

instance FromJSON QueueType where
    parseJSON = parseJSONText "QueueType"

data Statistic
  = Avg
  | Max
  | Sum
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Statistic where
    parser = takeLowerText >>= \case
        "avg" -> pure Avg
        "max" -> pure Max
        "sum" -> pure Sum
        e -> fromTextError $ "Failure parsing Statistic from value: '" <> e
           <> "'. Accepted values: avg, max, sum"

instance ToText Statistic where
    toText = \case
        Avg -> "AVG"
        Max -> "MAX"
        Sum -> "SUM"

instance Hashable     Statistic
instance NFData       Statistic
instance ToByteString Statistic
instance ToQuery      Statistic
instance ToHeader     Statistic

instance ToJSON Statistic where
    toJSON = toJSONText

instance FromJSON Statistic where
    parseJSON = parseJSONText "Statistic"

data Unit
  = Count
  | Percent
  | Seconds
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Unit where
    parser = takeLowerText >>= \case
        "count" -> pure Count
        "percent" -> pure Percent
        "seconds" -> pure Seconds
        e -> fromTextError $ "Failure parsing Unit from value: '" <> e
           <> "'. Accepted values: count, percent, seconds"

instance ToText Unit where
    toText = \case
        Count -> "COUNT"
        Percent -> "PERCENT"
        Seconds -> "SECONDS"

instance Hashable     Unit
instance NFData       Unit
instance ToByteString Unit
instance ToQuery      Unit
instance ToHeader     Unit

instance ToJSON Unit where
    toJSON = toJSONText

instance FromJSON Unit where
    parseJSON = parseJSONText "Unit"
