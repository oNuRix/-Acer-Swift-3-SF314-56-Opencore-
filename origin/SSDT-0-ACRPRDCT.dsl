/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-0-ACRPRDCT.aml, Thu Apr  7 14:45:33 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000030D7 (12503)
 *     Revision         0x01
 *     Checksum         0x12
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // 0 Arguments    // From external reference file
    External (_GPE.VHOV, MethodObj)    // 3 Arguments    // From external reference file
    External (_SB_.IETM, DeviceObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // 1 Arguments    // From external reference file
    External (_SB_.PCI0.GFX0.DD1F, DeviceObj)
    External (_SB_.PCI0.GFX0.GHDS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.GLID, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.IUER, FieldUnitObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments    // From external reference file
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments    // From external reference file
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments    // From external reference file
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // 2 Arguments    // From external reference file
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX.CT02, UnknownObj)
    External (_SB_.PCI0.RP05.PXSX.GESC, UnknownObj)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // 4 Arguments    // From external reference file
    External (_SB_.PCI0.WMID, DeviceObj)
    External (_SB_.PCI0.WMID.BHGK, BuffObj)
    External (_SB_.PCI0.WMID.BHSK, BuffObj)
    External (_SB_.PCI0.WMID.FEBC, BuffObj)
    External (_SB_.PCI0.WMID.WMIB, BuffObj)
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // 2 Arguments    // From external reference file
    External (_SB_.PR00, ProcessorObj)
    External (_SB_.PR01, ProcessorObj)
    External (_SB_.PR02, ProcessorObj)
    External (_SB_.PR03, ProcessorObj)
    External (_SB_.PR04, ProcessorObj)
    External (_SB_.PR05, ProcessorObj)
    External (_SB_.PR06, ProcessorObj)
    External (_SB_.PR07, ProcessorObj)
    External (_SB_.PR08, ProcessorObj)
    External (_SB_.PR09, ProcessorObj)
    External (_SB_.PR10, ProcessorObj)
    External (_SB_.PR11, ProcessorObj)
    External (_SB_.PR12, ProcessorObj)
    External (_SB_.PR13, ProcessorObj)
    External (_SB_.PR14, ProcessorObj)
    External (_SB_.PR15, ProcessorObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (AHDB, FieldUnitObj)
    External (HEB1, FieldUnitObj)
    External (HEFE, FieldUnitObj)
    External (INMS, UnknownObj)
    External (IUBE, FieldUnitObj)
    External (IUCE, FieldUnitObj)
    External (IUDE, FieldUnitObj)
    External (MDBG, MethodObj)    // 1 Arguments    // From external reference file
    External (ODV0, UnknownObj)
    External (OSYS, UnknownObj)
    External (P80B, UnknownObj)
    External (PB1E, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (SGMD, FieldUnitObj)
    External (SSMP, UnknownObj)
    External (TCNT, UnknownObj)
    External (VBST, FieldUnitObj)

    Scope (\)
    {
        Name (PS2E, One)
        Name (I2CD, One)
        Name (LIDE, One)
        Name (I2CG, Zero)
        Name (GSSC, Zero)
        Method (STMS, 1, Serialized)
        {
            Local0 = ToInteger (Arg0)
            Local0 *= 0x0A
            While ((Local0 != Zero))
            {
                Stall (0x64)
                Local0--
            }
        }
    }

    Scope (\)
    {
        OperationRegion (CNVS, SystemMemory, 0x89B8E018, 0x00000800)
        Field (CNVS, AnyAcc, Lock, Preserve)
        {
            SFUN,   8, 
            SPR0,   8, 
            SPR1,   8, 
            SPR2,   8, 
            WNVA,   32, 
            WNVB,   32, 
            WNVC,   32, 
            WNVD,   32, 
            WFLG,   32, 
            WNVS,   32, 
            WNVI,   32, 
            TSMI,   8, 
            Offset (0x400), 
            CPPM,   8, 
            Offset (0x402), 
            TPMD,   8, 
            PNID,   8, 
            Offset (0x405), 
            DUST,   8, 
            SKUN,   8, 
            Offset (0x408), 
            Offset (0x409), 
            Offset (0x600), 
            COSI,   16
        }

        Method (TRPS, 2, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            SPR0 = Arg1
            SFUN = Arg0
            SSMP = TSMI /* \TSMI */
            Local0 = SPR0 /* \SPR0 */
            Release (MSMI)
            Return (Local0)
        }
    }

    Scope (\)
    {
        Mutex (MSMI, 0x00)
        Method (WSMI, 1, NotSerialized)
        {
            SFUN = Arg0
            SSMP = TSMI /* \TSMI */
        }

        Method (RBEC, 1, NotSerialized)
        {
            Return (TRPS (0x10, Arg0))
        }

        Method (WBEC, 2, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            SPR1 = Arg1
            SPR0 = Arg0
            SFUN = 0x11
            SSMP = TSMI /* \TSMI */
            Release (MSMI)
        }

        Method (MBEC, 3, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            SPR2 = Arg2
            SPR1 = Arg1
            SPR0 = Arg0
            SFUN = 0x12
            SSMP = TSMI /* \TSMI */
            Release (MSMI)
        }
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (_GPE, 0x50)  // _GPE: General Purpose Events
            Name (\ECOK, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
            })
            OperationRegion (ECO1, SystemIO, 0x62, One)
            Field (ECO1, ByteAcc, Lock, Preserve)
            {
                PX62,   8
            }

            OperationRegion (ECO2, SystemIO, 0x66, One)
            Field (ECO2, ByteAcc, Lock, Preserve)
            {
                PX66,   8
            }

            OperationRegion (ECMB, SystemMemory, 0xFE800000, 0x0200)
            OperationRegion (RAM, EmbeddedControl, Zero, 0xFF)
            Field (RAM, ByteAcc, Lock, Preserve)
            {
                CMDB,   8, 
                Offset (0x06), 
                CMD2,   8, 
                CMD1,   8, 
                CMD0,   8, 
                Offset (0x0A), 
                    ,   1, 
                    ,   1, 
                Offset (0x10), 
                EQEN,   1, 
                    ,   1, 
                Offset (0x4E), 
                ISEN,   1, 
                Offset (0x51), 
                    ,   3, 
                TPEN,   1, 
                Offset (0x52), 
                WLEX,   1, 
                BTEX,   1, 
                EX3G,   1, 
                    ,   3, 
                RFEX,   1, 
                Offset (0x57), 
                    ,   7, 
                AHKB,   1, 
                AHKE,   8, 
                Offset (0x5C), 
                Offset (0x5D), 
                Offset (0x70), 
                    ,   1, 
                KLID,   1, 
                    ,   3, 
                KACS,   1, 
                Offset (0x71), 
                WLEN,   1, 
                BTEN,   1, 
                    ,   3, 
                ISS3,   1, 
                ISS4,   1, 
                ISS5,   1, 
                Offset (0x74), 
                    ,   2, 
                    ,   1, 
                TPEX,   1, 
                Offset (0x75), 
                BLST,   1, 
                LMIB,   1, 
                    ,   5, 
                HIDS,   1, 
                ECSS,   4, 
                EOSS,   4, 
                Offset (0x93), 
                F1ST,   8, 
                F1WS,   8, 
                F1RS,   8, 
                F2ST,   8, 
                F2WS,   8, 
                F2RS,   8, 
                Offset (0x9A), 
                F3ST,   8, 
                F3WS,   8, 
                F3RS,   8
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (((Arg0 == 0x03) && (Arg1 == One)))
                {
                    \ECOK = Arg1
                    TINI ()
                    EOSS = 0x05
                    OSIN ()
                }

                \_SB.PCI0.GFX0.GLID (KLID)
            }

            Name (RFST, Zero)
            Method (ECPS, 1, NotSerialized)
            {
                ECSS = Arg0
                COSI = OSYS /* External reference */
                SPR1 = Arg0
                TRPS (0x82, 0x02)
                If (((Arg0 == 0x03) || (Arg0 == 0x04)))
                {
                    RFST = RFEX /* \_SB_.PCI0.LPCB.EC0_.RFEX */
                }

                If ((Arg0 == 0x03)){}
                If ((Arg0 == 0x04)){}
            }

            Method (ECWK, 1, NotSerialized)
            {
                EQEN = One
                EOSS = Arg0
                TINI ()
                Notify (BAT0, 0x81) // Information Change
                COSI = OSYS /* External reference */
                SPR1 = Arg0
                TRPS (0x82, 0x03)
                If (((Arg0 == 0x03) || (Arg0 == 0x04)))
                {
                    RFEX = RFST /* \_SB_.PCI0.LPCB.EC0_.RFST */
                    If ((S0ID == Zero))
                    {
                        Notify (\_SB.SLPB, 0x02) // Device Wake
                    }

                    SMCM (One)
                }

                If ((Arg0 == 0x03)){}
                If ((Arg0 == 0x04)){}
                If (((Arg0 == 0x04) || (Arg0 == 0x05))){}
                \_SB.PCI0.GFX0.GLID (KLID)
            }

            Method (OSIN, 0, NotSerialized)
            {
                COSI = OSYS /* External reference */
                TRPS (0x82, One)
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x02), 
                ,   5, 
            MACS,   1
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x70), 
                ,   5, 
            EACS,   1
        }

        Name (ACST, One)
        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (INMS)
                {
                    Local0 = EACS /* \_SB_.PCI0.LPCB.EC0_.EACS */
                }
                Else
                {
                    Local0 = MACS /* \_SB_.PCI0.LPCB.EC0_.MACS */
                }

                If (Local0)
                {
                    ACST = One
                }
                Else
                {
                    ACST = Zero
                }

                Return (ACST) /* \_SB_.PCI0.LPCB.EC0_.ACST */
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (\_SB)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Name (B0ST, Zero)
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x08), 
            MB0S,   8
        }

        OperationRegion (MBB0, SystemMemory, 0xFE800080, 0xC0)
        Field (MBB0, ByteAcc, Lock, Preserve)
        {
            MBRC,   16, 
            MBFC,   16, 
            MBPE,   16, 
            MBAC,   16, 
            MBVO,   16, 
                ,   15, 
            MBCM,   1, 
            MBCU,   16, 
            MBTV,   16
        }

        Field (MBB0, ByteAcc, Lock, Preserve)
        {
            Offset (0x10), 
            MBDC,   16, 
            MBDV,   16, 
            MBSN,   16
        }

        Field (MBB0, ByteAcc, Lock, Preserve)
        {
            Offset (0x40), 
            MBMN,   128
        }

        Field (MBB0, ByteAcc, Lock, Preserve)
        {
            Offset (0x50), 
            MBDN,   256
        }

        Field (MBB0, ByteAcc, Lock, Preserve)
        {
            Offset (0x70), 
            MBCH,   128
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x02), 
            EBID,   8, 
            Offset (0x88), 
            EB0A,   1, 
                ,   2, 
            EB0R,   1, 
            EB0L,   1, 
            EB0F,   1, 
            EB0N,   1
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x88), 
            EB0S,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0xE0), 
            EBRC,   16, 
            EBFC,   16, 
            EBPE,   16, 
            EBAC,   16, 
            EBVO,   16, 
                ,   15, 
            EBCM,   1, 
            EBCU,   16, 
            EBTV,   16
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0xE0), 
            EBDC,   16, 
            EBDV,   16, 
            EBSN,   16
        }

        Field (RAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            EBMN,   128
        }

        Field (RAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            EBDN,   128
        }

        Field (RAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            EBCH,   128
        }

        Method (GBIF, 3, NotSerialized)
        {
            If (Arg2)
            {
                Arg1 [One] = Ones
                Arg1 [0x02] = Ones
                Arg1 [0x04] = Ones
                Arg1 [0x05] = Zero
                Arg1 [0x06] = Zero
            }
            Else
            {
                Local0 = MBCM /* \_SB_.PCI0.LPCB.EC0_.MBCM */
                Arg1 [Zero] = (Local0 ^ One)
                If (Local0)
                {
                    Local1 = (MBDC * 0x0A)
                }
                Else
                {
                    Local1 = MBDC /* \_SB_.PCI0.LPCB.EC0_.MBDC */
                }

                Arg1 [One] = Local1
                If (Local0)
                {
                    Local2 = (MBFC * 0x0A)
                }
                Else
                {
                    Local2 = MBFC /* \_SB_.PCI0.LPCB.EC0_.MBFC */
                }

                Arg1 [0x02] = Local2
                Arg1 [0x04] = MBDV /* \_SB_.PCI0.LPCB.EC0_.MBDV */
                Divide (Local2, 0x64, Local7, Local6)
                Local3 = (Local6 * 0x07)
                Arg1 [0x05] = Local3
                Local4 = 0x0A
                Local4 += One
                Local4 *= Local6
                Divide (Local4, 0x02, Local7, Local4)
                Arg1 [0x06] = Local4
                Local7 = MBSN /* \_SB_.PCI0.LPCB.EC0_.MBSN */
                Name (SERN, Buffer (0x06)
                {
                    "     "
                })
                Local6 = 0x04
                While (Local7)
                {
                    Divide (Local7, 0x0A, Local5, Local7)
                    SERN [Local6] = (Local5 + 0x30)
                    Local6--
                }

                Arg1 [0x0A] = SERN /* \_SB_.PCI0.LPCB.EC0_.GBIF.SERN */
                Arg1 [0x09] = MBDN /* \_SB_.PCI0.LPCB.EC0_.MBDN */
                Arg1 [0x0B] = MBCH /* \_SB_.PCI0.LPCB.EC0_.MBCH */
                Arg1 [0x0C] = MBMN /* \_SB_.PCI0.LPCB.EC0_.MBMN */
            }

            Return (Arg1)
        }

        Method (MBST, 4, NotSerialized)
        {
            If ((Arg1 & 0x02))
            {
                Local0 = 0x02
                If ((Arg1 & 0x20))
                {
                    Local0 = Zero
                }
            }
            ElseIf ((Arg1 & 0x04))
            {
                Local0 = One
            }
            Else
            {
                Local0 = Zero
            }

            If ((Arg1 & 0x10))
            {
                Local0 |= 0x04
            }

            If ((Arg1 & One))
            {
                Local1 = MBAC /* \_SB_.PCI0.LPCB.EC0_.MBAC */
                Local2 = MBRC /* \_SB_.PCI0.LPCB.EC0_.MBRC */
                If (ACST)
                {
                    If ((Arg1 & 0x20))
                    {
                        Local2 = MBFC /* \_SB_.PCI0.LPCB.EC0_.MBFC */
                    }
                }

                If (Arg2)
                {
                    Local2 *= 0x0A
                }

                Local3 = MBVO /* \_SB_.PCI0.LPCB.EC0_.MBVO */
                If ((Local1 >= 0x8000))
                {
                    If ((Local0 & One))
                    {
                        Local1 = (0x00010000 - Local1)
                    }
                    Else
                    {
                        Local1 = Zero
                    }
                }
                ElseIf (((Local0 & 0x02) == Zero))
                {
                    Local1 = Zero
                }

                If (Arg2)
                {
                    Local1 *= Local3
                    Divide (Local1, 0x03E8, Local7, Local1)
                }
            }
            Else
            {
                Local0 = Zero
                Local1 = Ones
                Local2 = Ones
                Local3 = Ones
            }

            Arg3 [Zero] = Local0
            Arg3 [One] = Local1
            Arg3 [0x02] = Local2
            Arg3 [0x03] = Local3
            Return (Arg3)
        }

        Method (EBST, 4, NotSerialized)
        {
            If ((Arg1 & 0x02))
            {
                Local0 = 0x02
                If ((Arg1 & 0x20))
                {
                    Local0 = Zero
                }
            }
            ElseIf ((Arg1 & 0x04))
            {
                Local0 = One
            }
            Else
            {
                Local0 = Zero
            }

            If ((Arg1 & 0x10))
            {
                Local0 |= 0x04
            }

            If ((Arg1 & One))
            {
                Local1 = EBAC /* \_SB_.PCI0.LPCB.EC0_.EBAC */
                Local2 = EBRC /* \_SB_.PCI0.LPCB.EC0_.EBRC */
                If (ACST)
                {
                    If ((Arg1 & 0x20))
                    {
                        Local2 = EBFC /* \_SB_.PCI0.LPCB.EC0_.EBFC */
                    }
                }

                If (Arg2)
                {
                    Local2 *= 0x0A
                }

                Local3 = EBVO /* \_SB_.PCI0.LPCB.EC0_.EBVO */
                If ((Local1 >= 0x8000))
                {
                    If ((Local0 & One))
                    {
                        Local1 = (0x00010000 - Local1)
                    }
                    Else
                    {
                        Local1 = Zero
                    }
                }
                ElseIf (((Local0 & 0x02) == Zero))
                {
                    Local1 = Zero
                }

                If (Arg2)
                {
                    Local1 *= Local3
                    Divide (Local1, 0x03E8, Local7, Local1)
                }
            }
            Else
            {
                Local0 = Zero
                Local1 = Ones
                Local2 = Ones
                Local3 = Ones
            }

            Arg3 [Zero] = Local0
            Arg3 [One] = Local1
            Arg3 [0x02] = Local2
            Arg3 [0x03] = Local3
            Return (Arg3)
        }

        Method (GBST, 3, NotSerialized)
        {
            If (INMS)
            {
                Local0 = EB0S /* \_SB_.PCI0.LPCB.EC0_.EB0S */
                Return (EBST (Arg0, Local0, Arg1, Arg2))
            }
            Else
            {
                Local0 = MB0S /* \_SB_.PCI0.LPCB.EC0_.MB0S */
                Return (MBST (Arg0, Local0, Arg1, Arg2))
            }
        }

        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "0")  // _DDN: DOS Device Name
            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (\_SB)
            }

            Name (B0IP, Package (0x0D)
            {
                One, 
                Ones, 
                Ones, 
                One, 
                Ones, 
                Zero, 
                Zero, 
                One, 
                One, 
                "", 
                "100", 
                "Lion", 
                Zero
            })
            Name (B0SP, Package (0x04)
            {
                Zero, 
                Ones, 
                Ones, 
                Ones
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = MB0S /* \_SB_.PCI0.LPCB.EC0_.MB0S */
                Local1 = (Local0 & One)
                If ((Local0 & 0x40))
                {
                    Local1 = Zero
                }

                B0ST = Local1
                If (Local1)
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Local6 = B0ST /* \_SB_.PCI0.LPCB.EC0_.B0ST */
                Local7 = 0x14
                While ((Local6 && Local7))
                {
                    Local1 = MB0S /* \_SB_.PCI0.LPCB.EC0_.MB0S */
                    If ((Local1 & 0x08))
                    {
                        Local6 = Zero
                    }
                    Else
                    {
                        Sleep (0x01F4)
                        Local7--
                    }
                }

                Return (GBIF (Zero, B0IP, Local6))
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Local0 = (DerefOf (B0IP [Zero]) ^ One)
                Return (GBST (Zero, Local0, B0SP))
            }
        }
    }

    Scope (\)
    {
        Mutex (MSGF, 0x00)
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x19
            \_SB.PCI0.GFX0.GHDS (0x03)
        }

        Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x1C
            If (CondRefOf (\_SB.PCI0.GFX0.DD1F))
            {
                Notify (\_SB.PCI0.GFX0.DD1F, 0x86) // Device-Specific
            }
        }

        Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x1D
            If (CondRefOf (\_SB.PCI0.GFX0.DD1F))
            {
                Notify (\_SB.PCI0.GFX0.DD1F, 0x87) // Device-Specific
            }
        }

        Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x36
            If (\ECOK)
            {
                EOSD = One
            }
            Else
            {
                MBEC (0x92, 0xF7, 0x08)
            }

            Sleep (0x01F4)
            Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
            Notify (\_TZ.TZ00, 0x80) // Thermal Status Change
        }

        Method (_Q3E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x3E
            If ((OSYS >= 0x07DF))
            {
                If ((CondRefOf (\_SB.SMKB) && (HEFE == Zero)))
                {
                    Notify (\_SB.SMKB, 0x80) // Status Change
                }

                If ((CondRefOf (\_SB.HIDD.HPEM) && (HEFE != Zero)))
                {
                    \_SB.HIDD.HPEM (0x08)
                }
            }
        }

        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x3F
            TRPS (0x80, Zero)
        }

        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x40
            Notify (\_SB.PCI0.LPCB.EC0.BAT0, 0x81) // Information Change
        }

        Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x41
            Notify (\_SB.PCI0.LPCB.EC0.BAT0, 0x81) // Information Change
        }

        Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x48
            Notify (\_SB.PCI0.LPCB.EC0.BAT0, 0x80) // Status Change
        }

        Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x4C
            If (B0ST)
            {
                Notify (\_SB.PCI0.LPCB.EC0.BAT0, 0x80) // Status Change
            }
        }

        Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x50
            Notify (\_SB.PCI0.LPCB.EC0.ADP1, 0x80) // Status Change
            If (CondRefOf (\_SB.PCI0.WMID))
            {
                \_SB.PCI0.WMID.FEBC [Zero] = 0x08
                Notify (\_SB.PCI0.WMID, 0xBC) // Device-Specific
            }
        }

        Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x51
            Notify (\_SB.PCI0.LPCB.EC0.ADP1, 0x80) // Status Change
            If (CondRefOf (\_SB.PCI0.WMID))
            {
                \_SB.PCI0.WMID.FEBC [Zero] = 0x08
                Notify (\_SB.PCI0.WMID, 0xBC) // Device-Specific
            }
        }

        Method (_Q52, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x52
            Notify (\_SB.LID0, 0x80) // Status Change
            \_SB.PCI0.GFX0.GLID (One)
        }

        Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x53
            Notify (\_SB.LID0, 0x80) // Status Change
            \_SB.PCI0.GFX0.GLID (Zero)
        }

        Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x60
            If (DUST)
            {
                If (CondRefOf (\_SB.PCI0.WMID))
                {
                    \_SB.PCI0.WMID.FEBC [Zero] = 0x06
                    \_SB.PCI0.WMID.FEBC [One] = One
                    \_SB.PCI0.WMID.FEBC [0x02] = One
                    Notify (\_SB.PCI0.WMID, 0xBC) // Device-Specific
                }
            }
        }

        Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x61
            If (DUST)
            {
                If (CondRefOf (\_SB.PCI0.WMID))
                {
                    \_SB.PCI0.WMID.FEBC [Zero] = 0x06
                    \_SB.PCI0.WMID.FEBC [One] = One
                    \_SB.PCI0.WMID.FEBC [0x02] = Zero
                    Notify (\_SB.PCI0.WMID, 0xBC) // Device-Specific
                }
            }
        }

        Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x6C
            TRPS (0x81, Zero)
        }

        Method (_Q6D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x6D
            TRPS (0x81, One)
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q2C, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Name (HKID, Zero)
            If (\ECOK)
            {
                If (LMIB)
                {
                    \P80B = 0x2C
                    HKID = AHKE /* \_SB_.PCI0.LPCB.EC0_.AHKE */
                    Switch (HKID)
                    {
                        Case (0xA3)
                        {
                        }
                        Default
                        {
                            If (AHKB)
                            {
                                \_SB.PCI0.WMID.FEBC [Zero] = 0x02
                                \_SB.PCI0.WMID.FEBC [One] = HKID /* \_SB_.PCI0.LPCB.EC0_._Q2C.HKID */
                                Notify (\_SB.PCI0.WMID, 0xBC) // Device-Specific
                            }
                            Else
                            {
                                \_SB.PCI0.WMID.FEBC [Zero] = One
                                \_SB.PCI0.WMID.FEBC [One] = HKID /* \_SB_.PCI0.LPCB.EC0_._Q2C.HKID */
                                Notify (\_SB.PCI0.WMID, 0xBC) // Device-Specific
                            }
                        }

                    }
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x06), 
            MBTP,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x4F), 
            ECTP,   8
        }

        Method (TPTP, 0, NotSerialized)
        {
            If (INMS)
            {
                Local0 = \_SB.PCI0.LPCB.EC0.ECTP
            }
            Else
            {
                Local0 = \_SB.PCI0.LPCB.EC0.MBTP
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Device (KBD0)
        {
            Name (_HID, "10250759")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0060,             // Range Minimum
                    0x0060,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0064,             // Range Minimum
                    0x0064,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {1}
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\PS2E == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (PS2M)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\PS2E == Zero))
                {
                    Return (Zero)
                }

                If ((\I2CD == One))
                {
                    If (((OSYS == 0x03E8) || (OSYS >= 0x07DD)))
                    {
                        If ((TPMD == One))
                        {
                            If ((\_SB.PCI0.LPCB.EC0.TPTP () != Zero))
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                If ((\_SB.PCI0.LPCB.EC0.TPTP () == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Local0 = \_SB.PCI0.LPCB.EC0.TPTP ()
                If ((Local0 == One))
                {
                    Return (0x6F1B2E4F)
                }

                If ((Local0 == 0x02))
                {
                    Return (0x04058416)
                }

                Return (0x6F1B2E4F)
            }

            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                Local0 = \_SB.PCI0.LPCB.EC0.TPTP ()
                If ((Local0 == One))
                {
                    Return (Package (0x03)
                    {
                        0x001B2E4F, 
                        0x02002E4F, 
                        0x130FD041
                    })
                }

                If ((Local0 == 0x02))
                {
                    Return (Package (0x02)
                    {
                        0x130FD041, 
                        0x8416
                    })
                }

                Return (Package (0x03)
                {
                    0x001B2E4F, 
                    0x02002E4F, 
                    0x130FD041
                })
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {12}
            })
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x20), 
            MS0T,   8, 
            MS1T,   8, 
            MS2T,   8, 
            MS3T,   8, 
            MS4T,   8, 
            MS5T,   8, 
            Offset (0x53), 
            MCSS,   1, 
            MCTT,   1, 
            MDTT,   1, 
            MOSD,   1, 
            MVTP,   1, 
            Offset (0x54), 
            MSP0,   8, 
            MSC0,   8, 
            MCC0,   8, 
            MSC1,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            ETEE,   1, 
            Offset (0x90), 
            SCPM,   1, 
            Offset (0x92), 
            ESSF,   1, 
            ECTT,   1, 
            EDTT,   1, 
            EOSD,   1, 
            EVTP,   1, 
            ECP1,   1, 
                ,   1, 
            ECP2,   1, 
            Offset (0xA8), 
            ES0T,   8, 
            ES1T,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x92), 
            ETAF,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x01), 
            ETID,   8, 
            Offset (0xD0), 
            ESP0,   8, 
            ESC0,   8, 
            ESP1,   8, 
            ESC1,   8
        }

        Method (TINI, 0, NotSerialized)
        {
            If (\ECOK)
            {
                ETAF = Zero
                ETEE = One
            }
            Else
            {
                WBEC (0x92, Zero)
                MBEC (0x10, 0xFD, 0x02)
            }
        }
    }

    Mutex (THSM, 0x00)
    Scope (\_TZ)
    {
        Name (TBSE, 0x0AAC)
        Name (CRT0, Zero)
        Name (PSV0, Zero)
        ThermalZone (TZ01)
        {
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (INMS)
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.ES0T
                    Local1 = \_SB.PCI0.LPCB.EC0.ESSF
                    Local2 = \_SB.PCI0.LPCB.EC0.EOSD
                }
                Else
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.MS0T
                    Local1 = \_SB.PCI0.LPCB.EC0.MCSS
                    Local2 = \_SB.PCI0.LPCB.EC0.MOSD
                }

                If (Local2)
                {
                    If ((Local0 <= CRT0))
                    {
                        Local0 = (CRT0 + 0x02)
                    }
                }

                Return (C2K (Local0))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Local0 = \_SB.PCI0.LPCB.EC0.MSC0
                If (((Local0 >= 0x80) || (Local0 < 0x1E)))
                {
                    Local0 = 0x78
                }

                CRT0 = Local0
                Return (C2K (Local0))
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                If (\ECOK)
                {
                    \_SB.PCI0.LPCB.EC0.SCPM = Arg0
                }
                Else
                {
                    MBEC (0x90, 0xFE, Arg0)
                }
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If ((TCNT == 0x10))
                {
                    Return (Package (0x10)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13, 
                        \_SB.PR14, 
                        \_SB.PR15
                    })
                }

                If ((TCNT == 0x0C))
                {
                    Return (Package (0x0C)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11
                    })
                }

                If ((TCNT == 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07
                    })
                }

                If ((TCNT == 0x06))
                {
                    Return (Package (0x06)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05
                    })
                }

                If ((TCNT == 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03
                    })
                }

                If ((TCNT == 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_SB.PR00, 
                        \_SB.PR01
                    })
                }

                Return (Package (0x01)
                {
                    \_SB.PR00
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Local0 = \_SB.PCI0.LPCB.EC0.MSP0
                If (((Local0 >= 0x80) || (Local0 < 0x1E)))
                {
                    Local0 = 0x1E
                }

                PSV0 = Local0
                Return (C2K (Local0))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (Zero)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (0x32)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (Zero)
            }
        }

        ThermalZone (TZ00)
        {
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (INMS)
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.ES1T
                }
                Else
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.MS1T
                }

                Return (C2K (Local0))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Local0 = \_SB.PCI0.LPCB.EC0.MSC1
                If (((Local0 >= 0x80) || (Local0 < 0x1E)))
                {
                    Local0 = 0x78
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Local0 = Arg0
            If ((Local0 <= 0x10))
            {
                Local0 = 0x1E
            }

            If ((Local0 >= 0x7F))
            {
                Local0 = 0x1E
            }

            Local0 = ((Local0 * 0x0A) + TBSE) /* \_TZ_.TBSE */
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x02), 
                ,   1, 
            MLID,   1
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x70), 
                ,   1, 
            ELID,   1, 
            Offset (0x72), 
                ,   4, 
            EIDW,   1
        }
    }

    Scope (\_SB)
    {
        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\LIDE == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (INMS)
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.ELID
                }
                Else
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.MLID
                }

                If (Local0)
                {
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x58), 
            CONV,   8
        }

        Method (SMCM, 1, Serialized)
        {
            If ((HEFE == Zero))
            {
                Return (Zero)
            }

            Local0 = Zero
            If ((CONV == Zero))
            {
                PB1E |= 0x08
            }
            ElseIf ((CONV == One))
            {
                PB1E |= 0x08
                Local0 = One
            }
            ElseIf ((CONV == 0x02))
            {
                PB1E &= 0xF7
                Local0 = 0x10
            }
            ElseIf ((CONV == 0x03))
            {
                PB1E &= 0xF7
                Local0 = 0x08
            }
            ElseIf ((CONV == 0x04))
            {
                PB1E &= 0xF7
                Local0 = 0x02
            }
            ElseIf ((CONV == 0x05))
            {
                PB1E &= 0xF7
                Local0 = 0x04
            }
            ElseIf ((CONV == 0x06))
            {
                PB1E &= 0xF7
                Local0 = 0x20
            }
            ElseIf ((CONV == 0x07))
            {
                PB1E &= 0xF7
                Local0 = 0x40
            }

            If ((Arg0 == One))
            {
                If ((PB1E & 0x08))
                {
                    UPBT (0x06, One)
                    Notify (\_SB.HIDD, 0xCD) // Hardware-Specific
                }
                Else
                {
                    UPBT (0x06, Zero)
                    Notify (\_SB.HIDD, 0xCC) // Hardware-Specific
                }

                If ((Local0 != Zero))
                {
                    \_SB.PCI0.WMID.FEBC [Zero] = 0x05
                    \_SB.PCI0.WMID.FEBC [One] = One
                    \_SB.PCI0.WMID.FEBC [0x06] = Local0
                    Notify (\_SB.PCI0.WMID, 0xBC) // Device-Specific
                }
            }
        }

        Name (VBDS, Zero)
        Name (ONTM, Zero)
        Method (VGBS, 0, Serialized)
        {
            ADBG ("VGBS")
            If ((ONTM == Zero))
            {
                If (((PB1E & 0x04) == 0x04))
                {
                    UPBT (0x04, One)
                }

                If (((PB1E & 0x08) == 0x08))
                {
                    UPBT (0x06, One)
                }

                If (((PB1E & 0x10) == 0x10))
                {
                    UPBT (0x07, One)
                }

                ONTM = One
            }

            Return (VBDS) /* \_SB_.PCI0.LPCB.EC0_.VBDS */
        }

        Method (UPBT, 2, Serialized)
        {
            Local0 = (One << Arg0)
            If (Arg1)
            {
                VBDS |= Local0
            }
            Else
            {
                VBDS &= ~Local0
            }
        }

        Device (BIND)
        {
            Name (_HID, "INT33D2" /* Intel GPIO Buttons */)  // _HID: Hardware ID
            Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (((IUBE & One) && (OSYS >= 0x07DD)))
                {
                    If ((PB1E & One))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */))
                {
                    If ((Zero == ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            Case (One)
                            {
                                If (((PB1E & One) == One))
                                {
                                    Return (0x07)
                                }

                                Return (Zero)
                            }

                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (CIND)
        {
            Name (_HID, "INT33D3" /* Intel GPIO Buttons */)  // _HID: Hardware ID
            Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (((IUCE & One) && (OSYS >= 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (DIND)
        {
            Name (_HID, "INT33D4" /* Intel GPIO Buttons */)  // _HID: Hardware ID
            Name (_CID, "PNP0C70" /* Dock Sensor Device */)  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (((IUDE & One) && (OSYS >= 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (\_SB)
    {
        Device (HIDD)
        {
            Name (_HID, "INT33D5")  // _HID: Hardware ID
            Name (HBSY, Zero)
            Name (HIDX, Zero)
            Name (HMDE, Zero)
            Name (HRDY, Zero)
            Name (BTLD, Zero)
            Name (BTS1, Zero)
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (((OSYS >= 0x07DD) && (HEFE == One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (HDDM, 0, Serialized)
            {
                Name (DPKG, Package (0x04)
                {
                    0x11111111, 
                    0x22222222, 
                    0x33333333, 
                    0x44444444
                })
                Return (DPKG) /* \_SB_.HIDD.HDDM.DPKG */
            }

            Method (HDEM, 0, Serialized)
            {
                HBSY = Zero
                If ((HMDE == Zero))
                {
                    Return (HIDX) /* \_SB_.HIDD.HIDX */
                }

                Return (HMDE) /* \_SB_.HIDD.HMDE */
            }

            Method (HDMM, 0, Serialized)
            {
                Return (HMDE) /* \_SB_.HIDD.HMDE */
            }

            Method (HDSM, 1, Serialized)
            {
                HRDY = Arg0
                If ((Arg0 == One))
                {
                    \_SB.PCI0.LPCB.EC0.HIDS = One
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC0.HIDS = Zero
                }
            }

            Method (HPEM, 1, Serialized)
            {
                HBSY = One
                If ((HMDE == Zero))
                {
                    HIDX = Arg0
                }
                Else
                {
                    HIDX = Arg0
                }

                Notify (\_SB.HIDD, 0xC0) // Hardware-Specific
                Local0 = Zero
                While (((Local0 < 0xFA) && HBSY))
                {
                    Sleep (0x04)
                    Local0++
                }

                If ((HBSY == One))
                {
                    HBSY = Zero
                    HIDX = Zero
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (BTNL, 0, Serialized)
            {
                \_SB.HIDD.BTLD = One
                BTS1 = 0x1F
            }

            Method (BTNE, 1, Serialized)
            {
                BTS1 = ((Arg0 & 0x1E) | One)
            }

            Method (BTNS, 0, Serialized)
            {
                BTS1 = 0x1F
                Return (BTS1) /* \_SB_.HIDD.BTS1 */
            }

            Method (BTNC, 0, Serialized)
            {
                Return (0x1F)
            }

            Name (HEB2, Zero)
            Method (HEBC, 0, Serialized)
            {
                If ((\AHDB == One))
                {
                    Return (\HEB1) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (H2BC, 0, Serialized)
            {
                If ((\AHDB == One))
                {
                    Return (\HEB1) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (HEEC, 0, Serialized)
            {
                If ((\AHDB == One))
                {
                    Return (HEB2) /* \_SB_.HIDD.HEB2 */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("eeec56b3-4442-408f-a792-4edd4d758054") /* Unknown UUID */))
                {
                    If ((One == ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (0x02)
                                {
                                     0xFF, 0x03                                       // ..
                                })
                            }
                            Case (One)
                            {
                                BTNL ()
                            }
                            Case (0x02)
                            {
                                Return (HDMM ())
                            }
                            Case (0x03)
                            {
                                HDSM (DerefOf (Arg3 [Zero]))
                            }
                            Case (0x04)
                            {
                                Return (HDEM ())
                            }
                            Case (0x05)
                            {
                                Return (BTNS ())
                            }
                            Case (0x06)
                            {
                                BTNE (DerefOf (Arg3 [Zero]))
                            }
                            Case (0x07)
                            {
                                Return (HEBC ())
                            }
                            Case (0x08)
                            {
                                Return (\_SB.PCI0.LPCB.EC0.VGBS ())
                            }
                            Case (0x09)
                            {
                                Return (H2BC ())
                            }

                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Method (PWPR, 0, Serialized)
        {
            If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
            {
                ADBG ("Notify _HID 0xCE")
                Notify (\_SB.HIDD, 0xCE) // Hardware-Specific
            }
            ElseIf (CondRefOf (\_SB.PCI0.GFX0.IUER))
            {
                Local0 = \_SB.PCI0.GFX0.IUER /* External reference */
                \_SB.PCI0.GFX0.IUER = (Local0 & 0xC0)
                Local0 = \_SB.PCI0.GFX0.IUER /* External reference */
                \_SB.PCI0.GFX0.IUER = (Local0 | One)
            }
        }

        Method (PWRR, 0, Serialized)
        {
            If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
            {
                ADBG ("Notify _HID 0xCF")
                Notify (\_SB.HIDD, 0xCF) // Hardware-Specific
            }
            ElseIf (CondRefOf (\_SB.PCI0.GFX0.IUER))
            {
                Local0 = \_SB.PCI0.GFX0.IUER /* External reference */
                \_SB.PCI0.GFX0.IUER = (Local0 & 0xC0)
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q6E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x6E
            SMCM (One)
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x70
            \_SB.PWPR ()
        }

        Method (_Q71, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \P80B = 0x71
            \_SB.PWRR ()
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (GCMS, 2, Serialized)
        {
            Local0 = Zero
            Local1 = (Arg0 & 0xFF)
            Switch (Local1)
            {
                Case (0x04)
                {
                    If (\_SB.PCI0.LPCB.EC0.WLEN)
                    {
                        Local0 |= One
                    }
                    Else
                    {
                        Local0 &= 0xFFFE
                    }
                }
                Case (0x61)
                {
                    _Q1C ()
                }
                Case (0x62)
                {
                    _Q1D ()
                }
                Case (0x63)
                {
                    If ((\_SB.PCI0.LPCB.EC0.BLST == One))
                    {
                        Local0 |= 0x04
                    }
                    Else
                    {
                        Local0 &= 0xFFFB
                    }
                }

            }

            Arg1 = Local0
            Return (Zero)
        }

        Method (GOTS, 2, Serialized)
        {
            Local0 = Zero
            Local1 = (Arg0 & 0xFF)
            Switch (Local1)
            {
                Case (0x82)
                {
                    If (\_SB.PCI0.LPCB.EC0.TPEN)
                    {
                        Local0 |= 0x02
                    }
                    Else
                    {
                        Local0 &= 0xFFFD
                    }
                }
                Case (0x86)
                {
                    Local0 |= 0x1000
                }
                Case (0x8A)
                {
                }

            }

            Arg1 = Local0
            Return (Zero)
        }

        Method (GBL1, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GBL2, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GSTY, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GSDA, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GTTY, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GTDA, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GACS, 1, NotSerialized)
        {
            Local0 = Zero
            Local0 = \_SB.PCI0.LPCB.EC0.MACS
            Arg0 = Local0
            Return (Zero)
        }

        Method (GBBS, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GBSI, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GBBC, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GHKF, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GHKD, 1, NotSerialized)
        {
            Local0 = Zero
            Arg0 = Local0
            Return (Zero)
        }

        Method (GGSI, 2, Serialized)
        {
            Name (FRPM, Zero)
            Name (REMD, Zero)
            Local0 = Zero
            Local1 = DerefOf (Arg0 [Zero])
            Local2 = DerefOf (Arg0 [One])
            If ((Local1 == Zero))
            {
                Local0 = GSSC /* \GSSC */
                Arg1 = Local0
            }
            ElseIf ((Local1 == One))
            {
                Switch (Local2)
                {
                    Case (One)
                    {
                        If ((\_SB.PCI0.LPCB.EC0.MS0T < 0x7F))
                        {
                            Local0 = \_SB.PCI0.LPCB.EC0.MS0T
                        }
                    }
                    Case (0x02)
                    {
                    }
                    Case (0x03)
                    {
                        If ((\_SB.PCI0.LPCB.EC0.MS1T < 0x7F))
                        {
                            Local0 = \_SB.PCI0.LPCB.EC0.MS1T
                        }
                    }
                    Case (0x04)
                    {
                        Return (One)
                    }
                    Case (0x05)
                    {
                        Return (One)
                    }
                    Case (0x06)
                    {
                    }
                    Case (0x07)
                    {
                        Return (One)
                    }
                    Case (0x08)
                    {
                        Return (One)
                    }
                    Case (0x09)
                    {
                    }
                    Case (0x0A)
                    {
                        If ((\_SB.PCI0.LPCB.EC0.MS3T < 0x7F))
                        {
                            Local0 = \_SB.PCI0.LPCB.EC0.MS3T
                        }
                    }
                    Case (0x0B)
                    {
                        Return (One)
                    }
                    Case (0x0C)
                    {
                    }
                    Case (0x0D)
                    {
                        Return (One)
                    }
                    Case (0x0E)
                    {
                        Return (One)
                    }
                    Case (0x0F)
                    {
                        Return (One)
                    }
                    Case (0x10)
                    {
                    }
                    Case (0x11)
                    {
                    }

                }

                Arg1 = Local0
            }
            ElseIf ((Local1 == 0x02))
            {
                If ((\_SB.PCI0.LPCB.EC0.MBPE < 0x28))
                {
                    Local0 = Zero
                }
                Else
                {
                    Local0 = One
                }

                Arg1 = Local0
            }

            Return (Zero)
        }
    }

    If (CondRefOf (\_SB.PCI0.RP05.PXSX))
    {
        Scope (\_SB.PCI0.LPCB.EC0)
        {
            Name (PLST, Zero)
            Name (COVT, Zero)
            Field (RAM, ByteAcc, Lock, Preserve)
            {
                Offset (0x6C), 
                PWLT,   1, 
                    ,   3, 
                GCON,   1
            }

            Field (ECMB, ByteAcc, Lock, Preserve)
            {
                Offset (0x59), 
                NSTV,   8
            }

            Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                \P80B = 0x67
                COVT = One
                \_SB.PCI0.RP05.PXSX.GESC = One
                Notify (\_SB.PCI0.RP05.PXSX, 0xC0) // Hardware-Specific
            }

            Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                \P80B = 0x68
                COVT = Zero
                \_SB.PCI0.RP05.PXSX.GESC = One
                Notify (\_SB.PCI0.RP05.PXSX, 0xC0) // Hardware-Specific
            }
        }
    }

    Scope (\_SB)
    {
        Device (SMKB)
        {
            Name (_HID, "10251229")  // _HID: Hardware ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((OSYS >= 0x07DF))
                {
                    Notify (SMKB, 0x80) // Status Change
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((OSYS >= 0x07DF) && (HEFE == Zero)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (\)
    {
        Name (B2ED, Buffer (0x1C)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0018 */  0x00, 0x00, 0x00, 0x00                           // ....
        })
        Method (WH15, 2, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            CreateDWordField (Arg1, Zero, DEAX)
            CreateDWordField (Arg1, 0x04, DEBX)
            CreateDWordField (Arg1, 0x08, DECX)
            CreateDWordField (Arg1, 0x0C, DEDX)
            CreateDWordField (B2ED, Zero, OEAX)
            CreateDWordField (B2ED, 0x04, OEBX)
            CreateDWordField (B2ED, 0x08, OECX)
            CreateDWordField (B2ED, 0x0C, OEDX)
            CreateDWordField (B2ED, 0x10, OFLG)
            OECX = DECX /* \WH15.DECX */
            OEDX = DEDX /* \WH15.DEDX */
            If ((\_SB.AMW0.WMID == One))
            {
                CreateDWordField (Arg1, 0x10, DESI)
                CreateDWordField (Arg1, 0x14, DEDI)
                CreateDWordField (B2ED, 0x14, OESI)
                CreateDWordField (B2ED, 0x18, OEDI)
                OESI = DESI /* \WH15.DESI */
                OEDI = DEDI /* \WH15.DEDI */
            }

            WNVA = DEAX /* \WH15.DEAX */
            WNVB = DEBX /* \WH15.DEBX */
            WNVC = DECX /* \WH15.DECX */
            WNVD = DEDX /* \WH15.DEDX */
            If ((\_SB.AMW0.WMID == One))
            {
                WNVS = DESI /* \WH15.DESI */
                WNVI = DEDI /* \WH15.DEDI */
            }

            WSMI (One)
            OEAX = WNVA /* \WNVA */
            OEBX = WNVB /* \WNVB */
            OECX = WNVC /* \WNVC */
            OEDX = WNVD /* \WNVD */
            OFLG = WFLG /* \WFLG */
            If ((\_SB.AMW0.WMID == One))
            {
                OESI = WNVS /* \WNVS */
                OEDI = WNVI /* \WNVI */
            }

            Release (MSMI)
            Return (B2ED) /* \B2ED */
        }
    }

    Scope (\_SB)
    {
        Device (AMW0)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WLMP, Zero)
            Name (WMID, Zero)
            Name (B0ED, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateDWordField (B0ED, Zero, WLID)
            Name (B1ED, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Name (_WDG, Buffer (0x64)
            {
                /* 0000 */  0x81, 0x17, 0xF4, 0xD9, 0x33, 0xF6, 0x00, 0x44,  // ....3..D
                /* 0008 */  0x93, 0x55, 0x60, 0x17, 0x70, 0xBE, 0xC5, 0x10,  // .U`.p...
                /* 0010 */  0x41, 0x41, 0x01, 0x00, 0x1D, 0x37, 0xC3, 0x67,  // AA...7.g
                /* 0018 */  0xA3, 0x95, 0x37, 0x4C, 0xBB, 0x61, 0xDD, 0x47,  // ..7L.a.G
                /* 0020 */  0xB4, 0x91, 0xDA, 0xAB, 0x41, 0x42, 0x01, 0x02,  // ....AB..
                /* 0028 */  0xED, 0x16, 0x1F, 0x43, 0x2B, 0x0C, 0x4C, 0x44,  // ...C+.LD
                /* 0030 */  0xB2, 0x67, 0x27, 0xDE, 0xB1, 0x40, 0xCF, 0x9C,  // .g'..@..
                /* 0038 */  0x41, 0x43, 0x01, 0x02, 0x71, 0xBF, 0xD1, 0x40,  // AC..q..@
                /* 0040 */  0x2D, 0xA8, 0x59, 0x4E, 0xA1, 0x68, 0x39, 0x85,  // -.YN.h9.
                /* 0048 */  0xE0, 0x3B, 0x2E, 0x87, 0xB0, 0x00, 0x01, 0x08,  // .;......
                /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0060 */  0x44, 0x44, 0x01, 0x00                           // DD..
            })
            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                \P80B = Arg0
                If ((Arg0 == 0xB0))
                {
                    Return (B0ED) /* \_SB_.AMW0.B0ED */
                }
            }

            Method (WQAA, 1, NotSerialized)
            {
                \P80B = 0xAA
                Return (B1ED) /* \_SB_.AMW0.B1ED */
            }

            Method (WSAA, 2, NotSerialized)
            {
                \P80B = 0xA1
                CreateDWordField (Arg1, Zero, DDD0)
                If ((DDD0 == One))
                {
                    DDD0 += 0x02
                    B1ED [Zero] = DDD0 /* \_SB_.AMW0.WSAA.DDD0 */
                }
            }

            Method (WMAB, 3, NotSerialized)
            {
                \P80B = 0xAB
                WLMP = One
                WMID = Zero
                Return (WH15 (Arg1, Arg2))
            }

            Method (WMAC, 3, NotSerialized)
            {
                \P80B = 0xAC
                WLMP = One
                WMID = One
                Return (WH15 (Arg1, Arg2))
            }
        }
    }

    Scope (\_SB.AMW0)
    {
        Name (WQDD, Buffer (0x0560)
        {
            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
            /* 0008 */  0x50, 0x05, 0x00, 0x00, 0x70, 0x1D, 0x00, 0x00,  // P...p...
            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
            /* 0018 */  0x18, 0xCB, 0x8D, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
            /* 0020 */  0x10, 0x09, 0x10, 0x8A, 0xE7, 0x80, 0x42, 0x04,  // ......B.
            /* 0028 */  0x0A, 0x0D, 0xA1, 0x40, 0x30, 0x28, 0x38, 0x4B,  // ...@0(8K
            /* 0030 */  0x82, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x08, 0x84,  // ...&&@..
            /* 0038 */  0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00, 0xC3,  // $.0/@...
            /* 0040 */  0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31, 0x90,  // .l.0-.1.
            /* 0048 */  0xFA, 0xF7, 0x87, 0x28, 0x0D, 0x44, 0x22, 0x20,  // ...(.D" 
            /* 0050 */  0xA9, 0x14, 0x08, 0x09, 0x15, 0xA0, 0x5C, 0x80,  // ......\.
            /* 0058 */  0x6F, 0x01, 0xDA, 0x11, 0x25, 0x59, 0x80, 0x65,  // o...%Y.e
            /* 0060 */  0x18, 0x11, 0xD8, 0x2B, 0x32, 0x41, 0xE3, 0x04,  // ...+2A..
            /* 0068 */  0xE5, 0x0C, 0x03, 0x05, 0x6F, 0xC0, 0x36, 0x05,  // ....o.6.
            /* 0070 */  0x98, 0x1C, 0x04, 0x95, 0x3D, 0x08, 0x94, 0x0C,  // ....=...
            /* 0078 */  0x08, 0x79, 0x14, 0x60, 0x15, 0x4E, 0xD3, 0x49,  // .y.`.N.I
            /* 0080 */  0x60, 0xF7, 0x73, 0x91, 0x30, 0x18, 0x19, 0x13,  // `.s.0...
            /* 0088 */  0xA0, 0x50, 0x80, 0x46, 0x01, 0xDE, 0x40, 0x64,  // .P.F..@d
            /* 0090 */  0x4B, 0x80, 0x41, 0x01, 0xE2, 0x04, 0x28, 0x83,  // K.A...(.
            /* 0098 */  0x12, 0x4A, 0xB8, 0x83, 0x69, 0x4D, 0x80, 0x39,  // .J..iM.9
            /* 00A0 */  0x28, 0x82, 0x56, 0x1B, 0x98, 0x50, 0x3A, 0x03,  // (.V..P:.
            /* 00A8 */  0x12, 0x48, 0xAC, 0x16, 0xC1, 0x05, 0x13, 0x3B,  // .H.....;
            /* 00B0 */  0x6A, 0x94, 0x40, 0xD1, 0xDB, 0x1F, 0x04, 0x09,  // j.@.....
            /* 00B8 */  0xA7, 0x00, 0xA2, 0x06, 0x10, 0x45, 0x1A, 0x0D,  // .....E..
            /* 00C0 */  0x6A, 0x44, 0x09, 0x0E, 0xCC, 0xA3, 0x39, 0xD5,  // jD....9.
            /* 00C8 */  0xCE, 0x05, 0x48, 0x9F, 0xAB, 0x40, 0x8E, 0xF5,  // ..H..@..
            /* 00D0 */  0x34, 0xEA, 0x1C, 0x2E, 0x01, 0x49, 0x60, 0xAC,  // 4....I`.
            /* 00D8 */  0x04, 0xB7, 0xEE, 0x21, 0xE2, 0x5D, 0x03, 0x6A,  // ...!.].j
            /* 00E0 */  0xE2, 0x87, 0xC8, 0x04, 0xC1, 0xA1, 0x86, 0xE8,  // ........
            /* 00E8 */  0xF1, 0x86, 0x3B, 0x81, 0xA3, 0x3E, 0x12, 0x06,  // ..;..>..
            /* 00F0 */  0x71, 0x50, 0x47, 0x83, 0x39, 0x07, 0xD8, 0xE1,  // qPG.9...
            /* 00F8 */  0x64, 0x34, 0xE3, 0x52, 0x05, 0x98, 0x1D, 0xBA,  // d4.R....
            /* 0100 */  0x46, 0x96, 0xE0, 0x78, 0x0C, 0x7D, 0xF6, 0xE7,  // F..x.}..
            /* 0108 */  0xD3, 0x33, 0x24, 0x91, 0x3F, 0x08, 0xD4, 0xC8,  // .3$.?...
            /* 0110 */  0x0C, 0xED, 0xA1, 0x9E, 0x56, 0xCC, 0x90, 0x4F,  // ....V..O
            /* 0118 */  0x01, 0x87, 0xC5, 0xC4, 0x42, 0x68, 0x93, 0x1A,  // ....Bh..
            /* 0120 */  0x0F, 0xC4, 0xFF, 0xFF, 0x78, 0xC0, 0xA3, 0xF8,  // ....x...
            /* 0128 */  0x68, 0x20, 0x84, 0x57, 0x82, 0xD8, 0x1E, 0x50,  // h .W...P
            /* 0130 */  0x82, 0x01, 0x21, 0xE4, 0x64, 0x3C, 0xA8, 0x51,  // ..!.d<.Q
            /* 0138 */  0x18, 0x35, 0xDC, 0x61, 0x1C, 0xB5, 0x8F, 0x0F,  // .5.a....
            /* 0140 */  0x3A, 0x3C, 0x50, 0x51, 0xC3, 0xA6, 0x67, 0x06,  // :<PQ..g.
            /* 0148 */  0x7E, 0x5C, 0x60, 0xE7, 0x82, 0x98, 0x8F, 0x00,  // ~\`.....
            /* 0150 */  0x1E, 0xC9, 0x09, 0xF9, 0x38, 0xE1, 0x81, 0xC1,  // ....8...
            /* 0158 */  0x07, 0xC4, 0x7B, 0x9F, 0x32, 0x19, 0xC1, 0x99,  // ..{.2...
            /* 0160 */  0x7A, 0x80, 0xE0, 0xB0, 0x3E, 0x7C, 0x02, 0xFC,  // z...>|..
            /* 0168 */  0xB2, 0xF0, 0xB0, 0x90, 0xC0, 0xF7, 0x07, 0x03,  // ........
            /* 0170 */  0xE3, 0x46, 0x68, 0xBF, 0x02, 0x10, 0x82, 0x97,  // .Fh.....
            /* 0178 */  0x79, 0x02, 0x90, 0x53, 0x04, 0x8D, 0xCD, 0xD0,  // y..S....
            /* 0180 */  0x4F, 0x03, 0x2F, 0x0E, 0xE1, 0x83, 0x47, 0x38,  // O./...G8
            /* 0188 */  0xDF, 0x03, 0x38, 0x85, 0xC7, 0x00, 0x0F, 0xC1,  // ..8.....
            /* 0190 */  0x04, 0x16, 0x39, 0x02, 0x94, 0x98, 0x11, 0xA0,  // ..9.....
            /* 0198 */  0x8E, 0x0D, 0x27, 0x70, 0x3C, 0x61, 0x8F, 0xE0,  // ..'p<a..
            /* 01A0 */  0x78, 0xA2, 0x9C, 0xC4, 0x01, 0xF9, 0xA8, 0x61,  // x......a
            /* 01A8 */  0x84, 0xE0, 0xE5, 0x9E, 0x38, 0x88, 0xE6, 0x71,  // ....8..q
            /* 01B0 */  0x6A, 0x16, 0xEF, 0x00, 0x87, 0xC0, 0xC6, 0x84,  // j.......
            /* 01B8 */  0x3B, 0x40, 0x78, 0x08, 0x7C, 0x00, 0x8F, 0x1A,  // ;@x.|...
            /* 01C0 */  0xE7, 0x67, 0xA5, 0xB3, 0x42, 0x9E, 0x3B, 0xF8,  // .g..B.;.
            /* 01C8 */  0x98, 0xB0, 0x03, 0xE0, 0xD2, 0x0F, 0x27, 0x28,  // ......'(
            /* 01D0 */  0xB1, 0xE7, 0x13, 0x50, 0xFC, 0xFF, 0xCF, 0x27,  // ...P...'
            /* 01D8 */  0xC0, 0x1E, 0xE4, 0x99, 0xE4, 0xED, 0xE4, 0x68,  // .......h
            /* 01E0 */  0x9E, 0x4B, 0x1E, 0x48, 0x9E, 0x48, 0x9E, 0x4F,  // .K.H.H.O
            /* 01E8 */  0x8C, 0xF3, 0x66, 0xF2, 0x64, 0x10, 0xE1, 0xF9,  // ..f.d...
            /* 01F0 */  0xC4, 0xD7, 0x14, 0x23, 0x44, 0x09, 0x19, 0xE8,  // ...#D...
            /* 01F8 */  0xE1, 0x24, 0x42, 0x94, 0x70, 0x81, 0xC2, 0x1A,  // .$B.p...
            /* 0200 */  0x21, 0xC8, 0x63, 0xC1, 0x09, 0x1F, 0x76, 0xAC,  // !.c...v.
            /* 0208 */  0x40, 0x61, 0x9E, 0x4F, 0x98, 0xF0, 0xA7, 0x86,  // @a.O....
            /* 0210 */  0x2C, 0x9C, 0x4F, 0x00, 0xBA, 0xFC, 0xFF, 0xCF,  // ,.O.....
            /* 0218 */  0x27, 0x80, 0x33, 0x81, 0xE7, 0x13, 0x90, 0x0E,  // '.3.....
            /* 0220 */  0x8F, 0x1F, 0x4F, 0x80, 0xC9, 0x08, 0xB8, 0x16,  // ..O.....
            /* 0228 */  0x13, 0x87, 0x2F, 0xD4, 0xE3, 0xC0, 0xA7, 0x11,  // ../.....
            /* 0230 */  0x40, 0xCE, 0x09, 0xE4, 0xFD, 0xE3, 0x38, 0x9F,  // @.....8.
            /* 0238 */  0x44, 0x7C, 0xF7, 0xF2, 0xFF, 0xFF, 0xE6, 0xE5,  // D|......
            /* 0240 */  0x83, 0xC8, 0x1B, 0xC8, 0xC1, 0x3E, 0x8D, 0xB0,  // .....>..
            /* 0248 */  0x51, 0x05, 0x33, 0xCA, 0xE9, 0x47, 0x88, 0xFA,  // Q.3..G..
            /* 0250 */  0x52, 0x62, 0xC4, 0x08, 0xC1, 0x42, 0x05, 0x8A,  // Rb...B..
            /* 0258 */  0x11, 0x35, 0xB2, 0x61, 0x23, 0xC4, 0x79, 0xF8,  // .5.a#.y.
            /* 0260 */  0xA2, 0x0F, 0x06, 0x0D, 0xD5, 0xA7, 0x11, 0x80,  // ........
            /* 0268 */  0x1F, 0xA7, 0x09, 0xDC, 0xE9, 0x02, 0x4C, 0x93,  // ......L.
            /* 0270 */  0x38, 0x80, 0x28, 0x45, 0xC3, 0x68, 0x3A, 0x8F,  // 8.(E.h:.
            /* 0278 */  0x03, 0x01, 0x9F, 0x2F, 0x80, 0x89, 0xE2, 0x97,  // .../....
            /* 0280 */  0x9E, 0xCE, 0x27, 0xFE, 0xFF, 0xAB, 0x05, 0x91,  // ..'.....
            /* 0288 */  0x8D, 0xB5, 0x7A, 0x58, 0x34, 0xF3, 0x03, 0x48,  // ..zX4..H
            /* 0290 */  0xF0, 0xC5, 0x03, 0x6B, 0xD8, 0x27, 0x79, 0x16,  // ...k.'y.
            /* 0298 */  0x27, 0x99, 0x60, 0x56, 0x28, 0xC1, 0x7A, 0xD8,  // '.`V(.z.
            /* 02A0 */  0x4E, 0x09, 0xA3, 0x04, 0x24, 0x1A, 0x8E, 0xA1,  // N...$...
            /* 02A8 */  0xAD, 0x19, 0x46, 0x70, 0x06, 0xF1, 0x79, 0xC8,  // ..Fp..y.
            /* 02B0 */  0x21, 0xCE, 0x31, 0x50, 0x8E, 0x0C, 0x1E, 0xC5,  // !.1P....
            /* 02B8 */  0x59, 0x3D, 0x07, 0x78, 0x8C, 0x8F, 0x0B, 0x6C,  // Y=.x...l
            /* 02C0 */  0x7C, 0x3E, 0x08, 0xF0, 0xC3, 0xA0, 0x6F, 0x06,  // |>....o.
            /* 02C8 */  0x46, 0xB6, 0x9A, 0xD3, 0x0C, 0x0A, 0xCC, 0xC7,  // F.......
            /* 02D0 */  0x0B, 0x4E, 0x50, 0xD7, 0xCD, 0x05, 0x64, 0x43,  // .NP...dC
            /* 02D8 */  0x82, 0x79, 0x10, 0x38, 0x24, 0x30, 0x4F, 0xD5,  // .y.8$0O.
            /* 02E0 */  0x43, 0x02, 0x1E, 0xE0, 0x87, 0x04, 0xE6, 0x2B,  // C......+
            /* 02E8 */  0x81, 0x87, 0x04, 0x2C, 0xFE, 0xFF, 0xA8, 0x07,  // ...,....
            /* 02F0 */  0x71, 0x48, 0x60, 0x46, 0xF2, 0x90, 0xC0, 0xA6,  // qH`F....
            /* 02F8 */  0xEF, 0xC8, 0x01, 0x0A, 0x20, 0xDF, 0x30, 0x7C,  // .... .0|
            /* 0300 */  0xDC, 0x7B, 0xCA, 0x60, 0x63, 0x78, 0xE2, 0x33,  // .{.`cx.3
            /* 0308 */  0x9A, 0xD1, 0xB9, 0xC4, 0xE5, 0xE8, 0x42, 0xC1,  // ......B.
            /* 0310 */  0x45, 0xC1, 0xE8, 0x58, 0x60, 0x10, 0x4F, 0xCB,  // E..X`.O.
            /* 0318 */  0x51, 0xA6, 0x8A, 0x9E, 0x89, 0x7D, 0x9E, 0x42,  // Q....}.B
            /* 0320 */  0xC8, 0x89, 0x82, 0x5F, 0xDD, 0x74, 0x9F, 0x81,  // ..._.t..
            /* 0328 */  0x76, 0xF7, 0x08, 0xEA, 0x8B, 0x0A, 0x83, 0xF3,  // v.......
            /* 0330 */  0x64, 0x39, 0x9C, 0xAF, 0x14, 0xFC, 0xAE, 0xE3,  // d9......
            /* 0338 */  0xCB, 0x15, 0xF8, 0x46, 0x05, 0xF7, 0x50, 0xC1,  // ...F..P.
            /* 0340 */  0x46, 0x05, 0xF6, 0xEB, 0x88, 0x47, 0x05, 0xD6,  // F....G..
            /* 0348 */  0xFF, 0xFF, 0xA8, 0x60, 0x9D, 0x2B, 0xD8, 0xA8,  // ...`.+..
            /* 0350 */  0xC0, 0x7E, 0x26, 0xF0, 0xA8, 0x80, 0xCB, 0xD1,  // .~&.....
            /* 0358 */  0x82, 0x8D, 0x0A, 0xEC, 0x1E, 0x46, 0x05, 0xCA,  // .....F..
            /* 0360 */  0x20, 0xD7, 0x0F, 0x28, 0xD0, 0x8F, 0x96, 0xAF,  //  ..(....
            /* 0368 */  0x40, 0x0F, 0x41, 0x8F, 0x51, 0x1E, 0x14, 0xB8,  // @.A.Q...
            /* 0370 */  0x61, 0x7C, 0xDF, 0x03, 0x4E, 0x17, 0x10, 0x98,  // a|..N...
            /* 0378 */  0xF0, 0x18, 0xC1, 0x47, 0x18, 0xF2, 0xFF, 0x27,  // ...G...'
            /* 0380 */  0x28, 0x6B, 0x5C, 0xA8, 0xFB, 0x8A, 0xAF, 0x72,  // (k\....r
            /* 0388 */  0xEC, 0x3A, 0x85, 0xBB, 0x2A, 0x62, 0x60, 0x3D,  // .:..*b`=
            /* 0390 */  0x52, 0x0E, 0x6B, 0xB4, 0xB0, 0x07, 0xFC, 0xA6,  // R.k.....
            /* 0398 */  0xE5, 0x63, 0x9A, 0x67, 0x66, 0x8C, 0xB0, 0x1E,  // .c.gf...
            /* 03A0 */  0xAD, 0x95, 0x92, 0xD2, 0x2B, 0x9F, 0x23, 0xDD,  // ....+.#.
            /* 03A8 */  0xFA, 0x00, 0x41, 0x73, 0x79, 0x10, 0x78, 0xCE,  // ..Asy.x.
            /* 03B0 */  0x7B, 0x4B, 0x78, 0x73, 0xF7, 0x59, 0xC2, 0xC7,  // {Kxs.Y..
            /* 03B8 */  0xBD, 0xC7, 0x82, 0x97, 0x80, 0x97, 0x81, 0xF7,  // ........
            /* 03C0 */  0x92, 0x57, 0x5A, 0x76, 0xED, 0xF3, 0xAD, 0xCF,  // .WZv....
            /* 03C8 */  0x48, 0x0F, 0x80, 0x46, 0x09, 0x12, 0x23, 0xE6,  // H..F..#.
            /* 03D0 */  0xFB, 0x89, 0x91, 0x1F, 0x6D, 0x7D, 0x69, 0xF0,  // ....m}i.
            /* 03D8 */  0xBD, 0x2F, 0xC6, 0x5B, 0x1F, 0x8B, 0x77, 0xEB,  // ./.[..w.
            /* 03E0 */  0x03, 0x44, 0xFD, 0xFF, 0x6F, 0x7D, 0xC0, 0xFE,  // .D..o}..
            /* 03E8 */  0x72, 0xF1, 0xD6, 0x07, 0x1C, 0x30, 0x23, 0xBE,  // r....0#.
            /* 03F0 */  0xF6, 0x01, 0x93, 0x34, 0x2B, 0xD0, 0x59, 0xC3,  // ...4+.Y.
            /* 03F8 */  0x49, 0x40, 0x74, 0xED, 0xC3, 0xE9, 0x01, 0xD2,  // I@t.....
            /* 0400 */  0xB5, 0x0F, 0xAF, 0x03, 0x96, 0x8E, 0xDB, 0x0A,  // ........
            /* 0408 */  0x60, 0x94, 0xE4, 0x58, 0x85, 0xD2, 0x7E, 0xAC,  // `..X..~.
            /* 0410 */  0xA2, 0x20, 0x3E, 0xCE, 0xF8, 0xDA, 0x07, 0x58,  // . >....X
            /* 0418 */  0xF9, 0xFF, 0x5F, 0xFB, 0x00, 0x26, 0x0E, 0x09,  // .._..&..
            /* 0420 */  0xE6, 0xF5, 0xE2, 0x09, 0xC7, 0x43, 0x02, 0xEB,  // .....C..
            /* 0428 */  0x8D, 0xC6, 0x43, 0x82, 0xFB, 0xFF, 0x1F, 0x34,  // ..C....4
            /* 0430 */  0xD8, 0x86, 0x04, 0xE6, 0x8B, 0x9D, 0xAF, 0x8E,  // ........
            /* 0438 */  0xC0, 0x59, 0xF6, 0x82, 0x75, 0x29, 0xE1, 0x42,  // .Y..u).B
            /* 0440 */  0x61, 0x74, 0xB4, 0x30, 0x88, 0x01, 0x7D, 0x75,  // at.0..}u
            /* 0448 */  0x04, 0x7E, 0x17, 0x3E, 0xE0, 0x73, 0x75, 0x04,  // .~.>.su.
            /* 0450 */  0x0E, 0x17, 0x3E, 0xFC, 0xFF, 0xFF, 0xEA, 0x08,  // ..>.....
            /* 0458 */  0x38, 0xB8, 0xF1, 0x81, 0xF3, 0xEA, 0x08, 0xFC,  // 8.......
            /* 0460 */  0x4C, 0x5C, 0x1D, 0x01, 0x1D, 0x2A, 0x46, 0x0E,  // L\...*F.
            /* 0468 */  0x74, 0x4E, 0x31, 0x8C, 0xE0, 0xFF, 0x7F, 0x54,  // tN1....T
            /* 0470 */  0xE0, 0x06, 0xF6, 0xF1, 0x00, 0xD8, 0x8C, 0x0A,  // ........
            /* 0478 */  0x18, 0x9C, 0x06, 0x7C, 0x09, 0x05, 0xBC, 0x2A,  // ...|...*
            /* 0480 */  0xB4, 0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65,  // ..S.Q..e
            /* 0488 */  0x6A, 0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6,  // j.iP.O..
            /* 0490 */  0x8C, 0x5D, 0x29, 0x13, 0x8C, 0xB1, 0x02, 0x8D,  // .]).....
            /* 0498 */  0xC5, 0x22, 0x96, 0x23, 0x10, 0x87, 0x04, 0xA1,  // .".#....
            /* 04A0 */  0x22, 0x1F, 0x43, 0x02, 0x71, 0x44, 0x10, 0x1A,  // ".C.qD..
            /* 04A8 */  0xE1, 0x4D, 0x23, 0x10, 0xC7, 0x5B, 0x9B, 0x40,  // .M#..[.@
            /* 04B0 */  0x2C, 0xEE, 0xA1, 0x21, 0x10, 0xFF, 0xFF, 0x83,  // ,..!....
            /* 04B8 */  0x3C, 0x23, 0x64, 0x04, 0x44, 0xA9, 0x40, 0x74,  // <#d.D.@t
            /* 04C0 */  0x4B, 0x22, 0x6B, 0x12, 0x90, 0x95, 0x81, 0x08,  // K"k.....
            /* 04C8 */  0xC8, 0x81, 0x80, 0x68, 0x3A, 0x20, 0x2A, 0xEA,  // ...h: *.
            /* 04D0 */  0x21, 0x20, 0x20, 0x2B, 0x04, 0x11, 0x90, 0xD5,  // !  +....
            /* 04D8 */  0xD8, 0x00, 0x62, 0xDA, 0x40, 0x04, 0xE4, 0x5C,  // ..b.@..\
            /* 04E0 */  0x40, 0x34, 0x25, 0x10, 0x55, 0xA8, 0x03, 0x88,  // @4%.U...
            /* 04E8 */  0xE9, 0x05, 0x11, 0x90, 0xB3, 0x02, 0xD1, 0xE4,  // ........
            /* 04F0 */  0x40, 0x54, 0xB3, 0x0F, 0x20, 0x96, 0x00, 0x44,  // @T.. ..D
            /* 04F8 */  0x40, 0x4E, 0x4A, 0x23, 0x10, 0xEB, 0x54, 0x02,  // @NJ#..T.
            /* 0500 */  0xC2, 0x52, 0xBD, 0x1D, 0x04, 0xE8, 0x88, 0x20,  // .R..... 
            /* 0508 */  0x02, 0xB2, 0xB2, 0x2F, 0xAB, 0x80, 0x2C, 0x13,  // .../..,.
            /* 0510 */  0x44, 0x40, 0x4E, 0x07, 0x44, 0xA3, 0x02, 0x51,  // D@N.D..Q
            /* 0518 */  0x85, 0x56, 0x80, 0x98, 0x5C, 0x10, 0x01, 0x39,  // .V..\..9
            /* 0520 */  0x25, 0x10, 0x8D, 0x0C, 0x44, 0x95, 0x6A, 0x01,  // %...D.j.
            /* 0528 */  0x62, 0xB2, 0x41, 0x04, 0x64, 0x89, 0x5E, 0x80,  // b.A.d.^.
            /* 0530 */  0x98, 0x60, 0x10, 0x01, 0x39, 0x2C, 0x10, 0x8D,  // .`..9,..
            /* 0538 */  0x0E, 0x44, 0x65, 0xBF, 0x0A, 0x04, 0xE4, 0x10,  // .De.....
            /* 0540 */  0x20, 0x3A, 0x25, 0x10, 0x33, 0x40, 0x4C, 0x0E,  //  :%.3@L.
            /* 0548 */  0x88, 0x0E, 0x00, 0x04, 0x88, 0xC6, 0x02, 0xA2,  // ........
            /* 0550 */  0x92, 0xFE, 0x5B, 0x02, 0xB2, 0x40, 0x10, 0x01,  // ..[..@..
            /* 0558 */  0x39, 0x1C, 0x10, 0x8D, 0x0A, 0x44, 0xFF, 0xFF   // 9....D..
        })
    }
}

