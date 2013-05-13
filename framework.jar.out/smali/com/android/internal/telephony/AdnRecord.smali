.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AdnRecord$Injector;
    }
.end annotation


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field static final ANR_ADDITIONAL_NUMBER_END:I = 0xc

.field static final ANR_ADDITIONAL_NUMBER_RECORD_IDENTIFIER:I = 0x0

.field static final ANR_ADDITIONAL_NUMBER_START:I = 0x3

.field static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field static final ANR_CAPABILITY_ID:I = 0xd

.field static final ANR_EXTENSION_ID:I = 0xe

.field static final ANR_FILE_RECORD_IDENTIFIER:I = 0x10

.field static final ANR_FILE_SFI:I = 0xf

.field static final ANR_TON_AND_NPI:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT1_BCD_NUMBER_LENGTH:I = 0x1

.field static final EXT1_EXTENSION_DATA_END:I = 0xb

.field static final EXT1_EXTENSION_DATA_START:I = 0x2

.field static final EXT1_IDENTIFIER:I = 0xc

.field static final EXT1_RECORD_TYPE:I = 0x0

.field static final EXT1_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT1_TYPE_FREE:I = 0x0

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xff

.field static final TYPE1_ANR_RECORD_LENGTH_BYTES:I = 0xf

.field static final TYPE2_ANR_RECORD_LENGTH_BYTES:I = 0x11


# instance fields
.field additionalNumber:Ljava/lang/String;

.field alphaTag:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field extRecordForAdditionalNumber:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field sortKey:Ljava/lang/String;

.field tmp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 357
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 133
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 134
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 135
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 357
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 119
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 120
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 121
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 357
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 105
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 107
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "additionalNumber"
    .parameter "email"

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 753
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 357
    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 754
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 755
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 756
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 760
    :goto_0
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    .line 765
    return-void

    .line 759
    :cond_0
    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 115
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 102
    return-void
.end method

.method public static buildAdnString(ILjava/lang/String;[BIII)[B
    .locals 8
    .parameter "recordSize"
    .parameter "tag"
    .parameter "number"
    .parameter "offset"
    .parameter "numberBytes"
    .parameter "extRecordId"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, byteTag:[B
    const/4 v0, 0x0

    .line 536
    .local v0, adnRecord:[B
    add-int/lit8 v2, p0, -0xe

    .line 538
    .local v2, footerOffset:I
    if-eqz p2, :cond_1

    const/16 v5, 0xb

    if-gt p4, v5, :cond_0

    if-gez p4, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-object v4

    .line 542
    :cond_1
    new-array v0, p0, [B

    .line 543
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p0, :cond_2

    .line 544
    aput-byte v6, v0, v3

    .line 543
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 548
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 549
    const/4 v1, 0x0

    .line 559
    :goto_2
    if-eqz p2, :cond_3

    .line 560
    add-int/lit8 v4, v2, 0x1

    invoke-static {p2, p3, v0, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    add-int/lit8 v4, v2, 0x0

    int-to-byte v5, p4

    aput-byte v5, v0, v4

    .line 563
    add-int/lit8 v4, v2, 0xc

    aput-byte v6, v0, v4

    .line 564
    add-int/lit8 v4, v2, 0xd

    int-to-byte v5, p5

    aput-byte v5, v0, v4

    :cond_3
    move-object v4, v0

    .line 567
    goto :goto_0

    .line 551
    :cond_4
    add-int/lit8 v5, p0, -0xe

    invoke-static {p1, v5}, Lcom/android/internal/telephony/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v1

    .line 552
    if-eqz v1, :cond_0

    array-length v5, v1

    if-gt v5, v2, :cond_0

    .line 555
    array-length v4, v1

    invoke-static {v1, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public static buildAnrString(I[BIIIII)[B
    .locals 7
    .parameter "recordSize"
    .parameter "adNumber"
    .parameter "offset"
    .parameter "adNumberBytes"
    .parameter "ext1RecordId"
    .parameter "efAdnSfi"
    .parameter "adnRecordId"

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x11

    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, anrRecord:[B
    if-eq p0, v5, :cond_1

    if-eq p0, v6, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-object v2

    .line 667
    :cond_1
    if-eqz p1, :cond_2

    const/16 v3, 0xb

    if-gt p3, v3, :cond_0

    if-ltz p3, :cond_0

    .line 670
    :cond_2
    new-array v0, p0, [B

    .line 673
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p0, :cond_3

    .line 674
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 678
    :cond_3
    if-ne p0, v6, :cond_4

    .line 679
    int-to-byte v2, p5

    aput-byte v2, v0, v5

    .line 680
    const/16 v2, 0x10

    int-to-byte v3, p6

    aput-byte v3, v0, v2

    .line 683
    :cond_4
    if-eqz p1, :cond_5

    .line 684
    aput-byte v4, v0, v4

    .line 685
    const/4 v2, 0x1

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    .line 686
    const/16 v2, 0xe

    int-to-byte v3, p4

    aput-byte v3, v0, v2

    .line 687
    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object v2, v0

    .line 690
    goto :goto_0
.end method

.method public static buildEmailString(ILjava/lang/String;IIZ)[B
    .locals 5
    .parameter "recordSize"
    .parameter "email"
    .parameter "efAdnSfi"
    .parameter "adnRecordId"
    .parameter "isType1"

    .prologue
    const/4 v2, 0x0

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, emailRecord:[B
    if-eqz p1, :cond_2

    .line 611
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object v2

    .line 614
    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p0, -0x2

    if-gt v3, v4, :cond_0

    .line 618
    :cond_2
    new-array v0, p0, [B

    .line 620
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p0, :cond_3

    .line 621
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 624
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 625
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 627
    if-nez p4, :cond_4

    .line 628
    add-int/lit8 v2, p0, -0x2

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 629
    add-int/lit8 v2, p0, -0x1

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    :cond_4
    move-object v2, v0

    .line 633
    goto :goto_0
.end method

.method public static buildExt1String([BIII)[B
    .locals 5
    .parameter "ext1Data"
    .parameter "offset"
    .parameter "ext1DataBytes"
    .parameter "extRecordId"

    .prologue
    const/4 v4, 0x2

    .line 715
    const/4 v0, 0x0

    .line 717
    .local v0, ext1Record:[B
    if-eqz p0, :cond_1

    const/16 v2, 0xa

    if-gt p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 718
    :cond_0
    const/4 v2, 0x0

    .line 734
    :goto_0
    return-object v2

    .line 720
    :cond_1
    const/16 v2, 0xd

    new-array v0, v2, [B

    .line 722
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 723
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 726
    :cond_2
    if-eqz p0, :cond_3

    .line 727
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 728
    const/4 v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 729
    invoke-static {p0, p1, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    :cond_3
    const/16 v2, 0xc

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    move-object v2, v0

    .line 734
    goto :goto_0
.end method

.method public static buildIapString(III)[B
    .locals 3
    .parameter "recordSize"
    .parameter "emailTagNumberInIap"
    .parameter "emailRecordId"

    .prologue
    .line 581
    const/4 v1, 0x0

    .line 583
    .local v1, iapRecord:[B
    const/4 v2, 0x3

    if-gt p0, v2, :cond_0

    if-lt p1, p0, :cond_1

    .line 584
    :cond_0
    const/4 v2, 0x0

    .line 592
    :goto_0
    return-object v2

    .line 586
    :cond_1
    new-array v1, p0, [B

    .line 587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p0, :cond_2

    .line 588
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 590
    :cond_2
    int-to-byte v2, p2

    aput-byte v2, v1, p1

    move-object v2, v1

    .line 592
    goto :goto_0
.end method

.method public static calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 897
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v1

    .line 901
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 906
    .local v3, numberBytes:[B
    if-eqz v3, :cond_0

    .line 909
    array-length v0, v3

    .line 911
    .local v0, bytes:I
    const/16 v4, 0xb

    if-le v0, v4, :cond_0

    .line 914
    add-int/lit8 v4, v0, -0xb

    div-int/lit8 v1, v4, 0xa

    .line 915
    .local v1, cnt:I
    add-int/lit8 v4, v0, -0xb

    rem-int/lit8 v4, v4, 0xa

    if-eqz v4, :cond_0

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    .end local v0           #bytes:I
    .end local v1           #cnt:I
    .end local v3           #numberBytes:[B
    :catch_0
    move-exception v2

    .line 903
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getAdnBytes(Ljava/lang/String;I)[B
    .locals 3
    .parameter "str"
    .parameter "maxBytesToReturn"

    .prologue
    const/4 v1, 0x0

    .line 839
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 861
    :cond_0
    :goto_0
    return-object v0

    .line 842
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedChecked(Ljava/lang/String;)[B

    move-result-object v0

    .line 843
    .local v0, ret:[B
    if-nez v0, :cond_2

    .line 844
    invoke-static {p0}, Lcom/android/internal/telephony/AdnByteArray;->stringToAdnUcs2StartsWith80(Ljava/lang/String;)[B

    move-result-object v0

    .line 847
    :cond_2
    if-eqz v0, :cond_3

    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 851
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/AdnByteArray;->stringToAdnUcs2StartsWith81(Ljava/lang/String;)[B

    move-result-object v0

    .line 852
    if-eqz v0, :cond_4

    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 856
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/AdnByteArray;->stringToAdnUcs2StartsWith82(Ljava/lang/String;)[B

    move-result-object v0

    .line 857
    if-eqz v0, :cond_5

    array-length v2, v0

    if-le v2, p1, :cond_0

    :cond_5
    move-object v0, v1

    .line 861
    goto :goto_0
.end method

.method private isAdditionalNumberLegal()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 799
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 818
    :goto_0
    return v2

    .line 802
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 803
    goto :goto_0

    .line 805
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 806
    .local v1, len:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 807
    add-int/lit8 v1, v1, -0x1

    .line 809
    :cond_2
    const/16 v4, 0xf

    if-le v1, v4, :cond_3

    move v2, v3

    .line 810
    goto :goto_0

    .line 813
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 815
    goto :goto_0
.end method

.method private isAlphaTagLegal(I)Z
    .locals 4
    .parameter "adnRecordSize"

    .prologue
    const/4 v1, 0x1

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    :cond_0
    :goto_0
    return v1

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    add-int/lit8 v3, p1, -0xe

    invoke-static {v2, v3}, Lcom/android/internal/telephony/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v0

    .line 870
    .local v0, tagBytes:[B
    if-eqz v0, :cond_2

    array-length v2, v0

    add-int/lit8 v3, p1, -0xe

    if-le v2, v3, :cond_0

    .line 871
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEmailsLegal()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 822
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v1

    .line 825
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 828
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 829
    goto :goto_0

    .line 831
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 832
    .local v0, len:I
    const/16 v3, 0x26

    if-le v0, v3, :cond_0

    move v1, v2

    .line 833
    goto :goto_0
.end method

.method private isNumberLegal()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 776
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    :goto_0
    return v2

    .line 779
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 780
    goto :goto_0

    .line 782
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 783
    .local v1, len:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 784
    add-int/lit8 v1, v1, -0x1

    .line 786
    :cond_2
    const/16 v4, 0x30

    if-le v1, v4, :cond_3

    move v2, v3

    .line 787
    goto :goto_0

    .line 790
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 792
    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 310
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 314
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 315
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 316
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/LocalizeUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .local v2, numberLength:I
    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 340
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 342
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 345
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/AdnRecord$Injector;->adnRecordError(Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 347
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 348
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 180
    if-ne p0, p1, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 183
    :cond_0
    if-nez p0, :cond_1

    .line 184
    const-string p0, ""

    .line 186
    :cond_1
    if-nez p1, :cond_2

    .line 187
    const-string p1, ""

    .line 189
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 278
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 287
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public appendExtRecordForAdditionalNumber([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 493
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 494
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    .line 518
    :goto_0
    return-void

    .line 498
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_1

    .line 499
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 503
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 505
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    goto :goto_0

    .line 509
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 513
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public appendExtRecordForNumber([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 464
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 465
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 489
    :goto_0
    return-void

    .line 469
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_1

    .line 470
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 474
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 476
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    goto :goto_0

    .line 480
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 484
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .parameter "recordSize"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 226
    add-int/lit8 v3, p1, -0xe

    .line 229
    .local v3, footerOffset:I
    new-array v0, p1, [B

    .line 230
    .local v0, adnString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 231
    aput-byte v8, v0, v4

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    const-string v5, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 237
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3

    .line 239
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 241
    goto :goto_1

    .line 242
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 243
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 245
    goto :goto_1

    .line 247
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 249
    .local v1, bcdNumber:[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 254
    add-int/lit8 v5, v3, 0xc

    aput-byte v8, v0, v5

    .line 256
    add-int/lit8 v5, v3, 0xd

    aput-byte v8, v0, v5

    .line 259
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 262
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    add-int/lit8 v6, p1, -0xe

    invoke-static {v5, v6}, Lcom/android/internal/telephony/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v2

    .line 265
    .local v2, byteTag:[B
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Lcom/android/internal/telephony/AdnRecord$Injector;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v5, v3}, Lcom/android/internal/telephony/MiuiAdnUtils;->encodeAlphaTag([BLjava/lang/String;I)Z

    goto :goto_1
.end method

.method public containsNonGsmCharacter(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x1

    .line 768
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v1

    .line 771
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedChecked(Ljava/lang/String;)[B

    move-result-object v0

    .line 772
    .local v0, byteStr:[B
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNumberLength()I
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfId()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    return v0
.end method

.method public getEmailLength()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtRecord()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    return v0
.end method

.method public getExtRecordForAdditionalNumber()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLength()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getRecordId()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTempInt()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->tmp:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedRecordForAdditionalNumber()Z
    .locals 2

    .prologue
    .line 459
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegal(I)Z
    .locals 2
    .parameter "adnRecordSize"

    .prologue
    const/4 v0, 0x0

    .line 877
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecord;->isNumberLegal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 889
    :cond_0
    :goto_0
    return v0

    .line 880
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecord;->isAdditionalNumberLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecord;->isEmailsLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isAlphaTagLegal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseAdditionalNumber([B)V
    .locals 4
    .parameter "record"

    .prologue
    .line 429
    if-nez p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    :try_start_0
    array-length v2, p1

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    array-length v2, p1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 436
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 440
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 442
    .local v0, anumberLength:I
    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 444
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v0           #anumberLength:I
    :catch_0
    move-exception v1

    .line 454
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "Error parsing AdnRecord ext record"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 448
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v0       #anumberLength:I
    :cond_3
    const/4 v2, 0x2

    :try_start_1
    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 451
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setEfId(I)V
    .locals 0
    .parameter "efid"

    .prologue
    .line 750
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 751
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setRecordId(I)V
    .locals 0
    .parameter "adnRecordId"

    .prologue
    .line 742
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 743
    return-void
.end method

.method public setTempInt(I)V
    .locals 0
    .parameter "tmp"

    .prologue
    .line 364
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->tmp:I

    .line 365
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncAdditionalNumber(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 415
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 418
    :cond_0
    return-void
.end method

.method public truncNumber(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 409
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 412
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 212
    return-void
.end method
