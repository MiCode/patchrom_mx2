.class Lcom/android/server/sip/SipHelper;
.super Ljava/lang/Object;
.source "SipHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final STUN_SERVER:Ljava/lang/String; = "stun.meizu.com"

.field private static final STUN_SERVER_PORT:I = 0xd96

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSPORT:Ljava/lang/String; = "TLS"


# instance fields
.field private mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private mCallerContactURI:Ljavax/sip/address/SipURI;

.field private mContext:Landroid/content/Context;

.field private mHeaderFactory:Ljavax/sip/header/HeaderFactory;

.field private mHost:Ljava/lang/String;

.field private mMessageFactory:Ljavax/sip/message/MessageFactory;

.field private mOtherSideURI:Ljavax/sip/address/SipURI;

.field private mPort:I

.field private mPublicHost:Ljava/lang/String;

.field private mPublicPort:I

.field private mPushServerProfile:Landroid/net/sip/SipProfile;

.field private mRedirectSipUri:Ljavax/sip/address/SipURI;

.field private mSipInviteURI:Ljavax/sip/address/SipURI;

.field private mSipProvider:Ljavax/sip/SipProvider;

.field private mSipStack:Ljavax/sip/SipStack;

.field private mSmsServerProfile:Landroid/net/sip/SipProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/android/server/sip/SipHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V
    .locals 3
    .parameter "sipStack"
    .parameter "sipProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/16 v1, 0x13c4

    iput v1, p0, Lcom/android/server/sip/SipHelper;->mPort:I

    .line 120
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    .line 127
    iput-object v2, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    .line 128
    iput-object v2, p0, Lcom/android/server/sip/SipHelper;->mSmsServerProfile:Landroid/net/sip/SipProfile;

    .line 129
    iput-object v2, p0, Lcom/android/server/sip/SipHelper;->mRedirectSipUri:Ljavax/sip/address/SipURI;

    .line 130
    iput-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipInviteURI:Ljavax/sip/address/SipURI;

    .line 131
    iput-object v2, p0, Lcom/android/server/sip/SipHelper;->mCallerContactURI:Ljavax/sip/address/SipURI;

    .line 132
    iput-object v2, p0, Lcom/android/server/sip/SipHelper;->mOtherSideURI:Ljavax/sip/address/SipURI;

    .line 133
    iput-object v2, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    .line 137
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mPublicHost:Ljava/lang/String;

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipHelper;->mPublicPort:I

    .line 142
    iput-object p1, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    .line 143
    iput-object p2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 145
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    .line 146
    .local v0, sipFactory:Ljavax/sip/SipFactory;
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    .line 147
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    .line 148
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createMessageFactory()Ljavax/sip/message/MessageFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    .line 149
    return-void
.end method

.method private CreateAbilityInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 709
    const/4 v2, 0x0

    .line 710
    .local v2, retString:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 712
    .local v3, roleList:Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 713
    .local v0, abilityArray:Lorg/json/JSONArray;
    const-string v4, "Ability"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v0           #abilityArray:Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    return-object v2

    .line 714
    :catch_0
    move-exception v1

    .line 716
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private CreateRoleInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "accountName"

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "sip_phone_number"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 724
    .local v11, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "sip_active_email_keys"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, email:Ljava/lang/String;
    const/4 v12, 0x0

    .line 726
    .local v12, retString:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 727
    .local v8, jsonArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    const-string v15, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 728
    const-string v15, ";"

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, emaillist:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 731
    .local v9, jsonObj:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v15, v4

    if-ge v7, v15, :cond_0

    .line 733
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 734
    .end local v9           #jsonObj:Lorg/json/JSONObject;
    .local v10, jsonObj:Lorg/json/JSONObject;
    :try_start_1
    const-string v15, "address"

    aget-object v16, v4, v7

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 731
    .end local v10           #jsonObj:Lorg/json/JSONObject;
    .restart local v9       #jsonObj:Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 741
    .end local v4           #emaillist:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #jsonObj:Lorg/json/JSONObject;
    :cond_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 743
    .local v13, roleList:Lorg/json/JSONObject;
    :try_start_2
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 744
    .local v14, roleObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    const-string v15, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 745
    const-string v15, "Email"

    invoke-virtual {v14, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    :cond_1
    if-eqz v11, :cond_2

    const-string v15, ""

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 748
    const-string v15, "Phone"

    invoke-virtual {v14, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    :cond_2
    const-string v15, "Flyme"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 752
    .local v1, abilityArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "enable_sip_file"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 753
    .local v5, flymeFileFlag:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "internet_message_switch"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 755
    .local v6, flymeSmsFlag:I
    if-gtz v5, :cond_3

    if-lez v6, :cond_5

    .line 756
    :cond_3
    if-lez v6, :cond_4

    .line 757
    const-string v15, "SMS"

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 758
    const-string v15, "MMS"

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 760
    :cond_4
    if-lez v5, :cond_5

    .line 761
    const-string v15, "FILESEND"

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 764
    :cond_5
    if-eqz v1, :cond_6

    .line 765
    const-string v15, "Ability"

    invoke-virtual {v13, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    :cond_6
    const-string v15, "Role"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 772
    .end local v1           #abilityArray:Lorg/json/JSONArray;
    .end local v5           #flymeFileFlag:I
    .end local v6           #flymeSmsFlag:I
    .end local v14           #roleObject:Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    .line 774
    return-object v12

    .line 768
    :catch_0
    move-exception v2

    .line 770
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 736
    .end local v2           #e:Lorg/json/JSONException;
    .end local v13           #roleList:Lorg/json/JSONObject;
    .restart local v4       #emaillist:[Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v9       #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .end local v9           #jsonObj:Lorg/json/JSONObject;
    .restart local v10       #jsonObj:Lorg/json/JSONObject;
    :catch_2
    move-exception v15

    move-object v9, v10

    .end local v10           #jsonObj:Lorg/json/JSONObject;
    .restart local v9       #jsonObj:Lorg/json/JSONObject;
    goto/16 :goto_1
.end method

.method private createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 6
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 224
    .local v0, sequence:J
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v0, v1, p1}, Ljavax/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    return-object v2
.end method

.method private createCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v0}, Ljavax/sip/SipProvider;->getNewCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    return-object v0
.end method

.method private createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;
    .locals 5
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v2

    .line 268
    .local v2, lp:Ljavax/sip/ListeningPoint;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 271
    .local v1, contactURI:Ljavax/sip/address/SipURI;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v3, v1}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v0

    .line 272
    .local v0, contactAddress:Ljavax/sip/address/Address;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    return-object v3
.end method

.method private createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 2
    .parameter "profile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v0

    return-object v0
.end method

.method private createFromHeaderEx(Landroid/net/sip/SipProfile;Ljava/lang/String;Z)Ljavax/sip/header/FromHeader;
    .locals 5
    .parameter "profile"
    .parameter "tag"
    .parameter "bShowDisplayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v2

    .line 179
    .local v2, profileAddress:Ljavax/sip/address/Address;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v2}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v0

    .line 180
    .local v0, displayAddress:Ljavax/sip/address/Address;
    if-nez p3, :cond_0

    .line 181
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, v0, p2}, Ljavax/sip/header/HeaderFactory;->createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v3

    return-object v3

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sip_receiver_display_number"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, ownDisplayName:Ljava/lang/String;
    invoke-interface {v0, v1}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 1
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0, p1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createReportRequest(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 14
    .parameter "userProfile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    if-nez v0, :cond_0

    .line 667
    new-instance v9, Landroid/net/sip/SipProfile$Builder;

    const-string v0, "sip"

    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    invoke-direct {v9, v0, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .local v9, builder:Landroid/net/sip/SipProfile$Builder;
    iget v0, p0, Lcom/android/server/sip/SipHelper;->mPort:I

    invoke-virtual {v9, v0}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 669
    invoke-virtual {v9}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    .line 671
    .end local v9           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 672
    .local v5, fromHeader:Ljavax/sip/header/FromHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSmsServerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 673
    .local v6, toHeader:Ljavax/sip/header/ToHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 675
    .local v1, requestURI:Ljavax/sip/address/SipURI;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mRedirectSipUri:Ljavax/sip/address/SipURI;

    if-eqz v0, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mRedirectSipUri:Ljavax/sip/address/SipURI;

    .line 678
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 679
    .local v7, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 681
    .local v3, callIdHeader:Ljavax/sip/header/CallIdHeader;
    const-string v0, "MESSAGE"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 682
    .local v4, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 683
    .local v8, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const-string v2, "MESSAGE"

    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v10

    .line 686
    .local v10, request:Ljavax/sip/message/Request;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "User-Agent"

    const-string v12, "SIPAUA/0.1.001"

    invoke-interface {v0, v2, v12}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v11

    .line 688
    .local v11, userAgentHeader:Ljavax/sip/header/Header;
    invoke-interface {v10, v11}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 689
    return-object v10
.end method

.method private createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 10
    .parameter "requestType"
    .parameter "caller"
    .parameter "callee"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-direct {p0, p2, p4}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 694
    .local v5, fromHeader:Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p3}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 695
    .local v6, toHeader:Ljavax/sip/header/ToHeader;
    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 696
    .local v1, requestURI:Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 697
    .local v7, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 698
    .local v3, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 699
    .local v4, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 701
    .local v8, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object v2, p1

    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v9

    .line 705
    .local v9, request:Ljavax/sip/message/Request;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 706
    return-object v9
.end method

.method private createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 12
    .parameter "requestType"
    .parameter "userProfile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-direct {p0, p2, p3}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 595
    .local v5, fromHeader:Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 596
    .local v6, toHeader:Ljavax/sip/header/ToHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 599
    .local v1, requestURI:Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 600
    .local v7, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 601
    .local v3, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 602
    .local v4, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 603
    .local v8, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object v2, p1

    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v9

    .line 609
    .local v9, request:Ljavax/sip/message/Request;
    return-object v9
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;
    .locals 4
    .parameter "username"
    .parameter "transport"
    .parameter "lp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 287
    .local v1, uri:Ljavax/sip/address/SipURI;
    :try_start_0
    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v2

    invoke-interface {v1, v2}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 288
    invoke-interface {v1, p2}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    return-object v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createSmsCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;
    .locals 3
    .parameter "uuid"

    .prologue
    .line 213
    move-object v0, p1

    .line 214
    .local v0, callId:Ljava/lang/String;
    new-instance v1, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 216
    .local v1, callid:Lgov/nist/javax/sip/header/CallID;
    :try_start_0
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createSmsRequest(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 17
    .parameter "userProfile"
    .parameter "uuid"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    if-nez v3, :cond_0

    .line 640
    new-instance v12, Landroid/net/sip/SipProfile$Builder;

    const-string v3, "sip"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    invoke-direct {v12, v3, v5}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .local v12, builder:Landroid/net/sip/SipProfile$Builder;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sip/SipHelper;->mPort:I

    invoke-virtual {v12, v3}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 642
    invoke-virtual {v12}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    .line 644
    .end local v12           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v8

    .line 645
    .local v8, fromHeader:Ljavax/sip/header/FromHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mSmsServerProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v9

    .line 646
    .local v9, toHeader:Ljavax/sip/header/ToHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual/range {p1 .. p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v4

    .line 648
    .local v4, requestURI:Ljavax/sip/address/SipURI;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mRedirectSipUri:Ljavax/sip/address/SipURI;

    if-eqz v3, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/sip/SipHelper;->mRedirectSipUri:Ljavax/sip/address/SipURI;

    .line 651
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v10

    .line 652
    .local v10, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/sip/SipHelper;->createSmsCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;

    move-result-object v6

    .line 654
    .local v6, callIdHeader:Ljavax/sip/header/CallIdHeader;
    const-string v3, "MESSAGE"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    .line 655
    .local v7, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v11

    .line 656
    .local v11, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const-string v5, "MESSAGE"

    invoke-interface/range {v3 .. v11}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v13

    .line 659
    .local v13, request:Ljavax/sip/message/Request;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "User-Agent"

    const-string v15, "SIPAUA/0.1.001"

    invoke-interface {v3, v5, v15}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v14

    .line 661
    .local v14, userAgentHeader:Ljavax/sip/header/Header;
    invoke-interface {v13, v14}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 662
    return-object v13
.end method

.method private createSubscribeRequest(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 14
    .parameter "userProfile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    if-nez v0, :cond_0

    .line 614
    new-instance v9, Landroid/net/sip/SipProfile$Builder;

    const-string v0, "sip"

    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    invoke-direct {v9, v0, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v9, builder:Landroid/net/sip/SipProfile$Builder;
    iget v0, p0, Lcom/android/server/sip/SipHelper;->mPort:I

    invoke-virtual {v9, v0}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 616
    invoke-virtual {v9}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    .line 618
    .end local v9           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 619
    .local v5, fromHeader:Ljavax/sip/header/FromHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 620
    .local v6, toHeader:Ljavax/sip/header/ToHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 622
    .local v1, requestURI:Ljavax/sip/address/SipURI;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mRedirectSipUri:Ljavax/sip/address/SipURI;

    if-eqz v0, :cond_1

    .line 623
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mRedirectSipUri:Ljavax/sip/address/SipURI;

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 626
    .local v7, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 627
    .local v3, callIdHeader:Ljavax/sip/header/CallIdHeader;
    const-string v0, "SUBSCRIBE"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 628
    .local v4, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 629
    .local v8, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const-string v2, "SUBSCRIBE"

    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v10

    .line 632
    .local v10, request:Ljavax/sip/message/Request;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "User-Agent"

    const-string v12, "SIPAUA/0.1.001"

    invoke-interface {v0, v2, v12}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v11

    .line 634
    .local v11, userAgentHeader:Ljavax/sip/header/Header;
    invoke-interface {v10, v11}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 635
    return-object v10
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;
    .locals 1
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 2
    .parameter "profile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createTransferCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 5

    .prologue
    .line 203
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3}, Ljavax/sip/SipProvider;->getNewCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    .line 204
    .local v1, callidHeader:Ljavax/sip/header/CallIdHeader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mzfile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, callId:Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 207
    .local v2, transferCallid:Lgov/nist/javax/sip/header/CallID;
    :try_start_0
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-object v2

    .line 208
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private createViaHeaders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/sip/header/ViaHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v2, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 258
    .local v0, lp:Ljavax/sip/ListeningPoint;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v5

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getTransport()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/sip/header/HeaderFactory;->createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;

    move-result-object v1

    .line 260
    .local v1, viaHeader:Ljavax/sip/header/ViaHeader;
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->setRPort()V

    .line 261
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-object v2
.end method

.method private createWildcardContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v1}, Ljavax/sip/header/HeaderFactory;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v0

    .line 279
    .local v0, contactHeader:Ljavax/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->setWildCard()V

    .line 280
    return-object v0
.end method

.method public static getCallId(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 4
    .parameter "event"

    .prologue
    .line 1346
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 1367
    :goto_0
    return-object v3

    .line 1347
    :cond_0
    instance-of v3, p0, Ljavax/sip/RequestEvent;

    if-eqz v3, :cond_1

    .line 1348
    check-cast p0, Ljavax/sip/RequestEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1349
    .restart local p0
    :cond_1
    instance-of v3, p0, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_2

    .line 1350
    check-cast p0, Ljavax/sip/ResponseEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1351
    .restart local p0
    :cond_2
    instance-of v3, p0, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v3, :cond_3

    move-object v3, p0

    .line 1352
    check-cast v3, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {v3}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 1353
    .local v0, dialog:Ljavax/sip/Dialog;
    check-cast p0, Ljavax/sip/DialogTerminatedEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1354
    .end local v0           #dialog:Ljavax/sip/Dialog;
    .restart local p0
    :cond_3
    instance-of v3, p0, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v3, :cond_5

    move-object v1, p0

    .line 1355
    check-cast v1, Ljavax/sip/TransactionTerminatedEvent;

    .line 1356
    .local v1, e:Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v3

    goto :goto_1

    .line 1360
    .end local v1           #e:Ljavax/sip/TransactionTerminatedEvent;
    :cond_5
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    .line 1361
    .local v2, source:Ljava/lang/Object;
    instance-of v3, v2, Ljavax/sip/Transaction;

    if-eqz v3, :cond_6

    .line 1362
    check-cast v2, Ljavax/sip/Transaction;

    .end local v2           #source:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1363
    .restart local v2       #source:Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Ljavax/sip/Dialog;

    if-eqz v3, :cond_7

    .line 1364
    check-cast v2, Ljavax/sip/Dialog;

    .end local v2           #source:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1367
    .restart local v2       #source:Ljava/lang/Object;
    :cond_7
    const-string v3, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1382
    invoke-interface {p0}, Ljavax/sip/Dialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 1
    .parameter "transaction"

    .prologue
    .line 1371
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    .line 1376
    const-string v1, "Call-ID"

    invoke-interface {p0, v1}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 1378
    .local v0, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "UDP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 243
    .local v0, lp:Ljavax/sip/ListeningPoint;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "TCP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 244
    :cond_0
    if-nez v0, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2}, Ljavax/sip/SipProvider;->getListeningPoints()[Ljavax/sip/ListeningPoint;

    move-result-object v1

    .line 246
    .local v1, lps:[Ljavax/sip/ListeningPoint;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 248
    .end local v1           #lps:[Ljavax/sip/ListeningPoint;
    :cond_1
    if-nez v0, :cond_2

    .line 249
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "no listening point is available"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_2
    return-object v0
.end method

.method private getMyAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "accountName"

    .prologue
    .line 903
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 904
    const-string v0, "PHONE"

    .line 908
    :goto_0
    return-object v0

    .line 905
    :cond_0
    const-string v0, "@flyme.cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    const-string v0, "FLYME"

    goto :goto_0

    .line 908
    :cond_1
    const-string v0, "EMAIL"

    goto :goto_0
.end method

.method private getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;
    .locals 3
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 1019
    .local v1, transaction:Ljavax/sip/ServerTransaction;
    if-nez v1, :cond_0

    .line 1020
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 1021
    .local v0, request:Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 1023
    .end local v0           #request:Ljavax/sip/message/Request;
    .end local v1           #transaction:Ljavax/sip/ServerTransaction;
    :cond_0
    return-object v1
.end method

.method private isSipLogEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_sip_log"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, sipLogFlag:I
    if-lez v0, :cond_0

    .line 166
    const/4 v1, 0x1

    .line 169
    .end local v0           #sipLogFlag:I
    :cond_0
    return v1
.end method


# virtual methods
.method public checkIsFeatureEnable(Ljava/lang/String;)Z
    .locals 11
    .parameter "content"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1386
    :try_start_0
    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/android/server/sip/SipHelper;->hasFlymeAccount(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v7

    .line 1410
    :cond_0
    :goto_0
    return v3

    .line 1389
    :cond_1
    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enable_sip_file"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1390
    .local v2, flymeFileFlag:I
    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "internet_message_switch"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1392
    .local v4, flymeSmsFlag:I
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v5, smsObject:Lorg/json/JSONObject;
    const-string v8, "type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1394
    .local v6, type:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1397
    const-string v8, "sms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "mms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1398
    :cond_2
    if-lez v4, :cond_3

    .line 1399
    .local v3, flymeSmsEnalbe:Z
    :goto_1
    goto :goto_0

    .end local v3           #flymeSmsEnalbe:Z
    :cond_3
    move v3, v7

    .line 1398
    goto :goto_1

    .line 1400
    :cond_4
    const-string v8, "file"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 1401
    if-lez v2, :cond_5

    move v1, v3

    .local v1, flymeFileEnalbe:Z
    :goto_2
    move v3, v1

    .line 1402
    goto :goto_0

    .end local v1           #flymeFileEnalbe:Z
    :cond_5
    move v1, v7

    .line 1401
    goto :goto_2

    .line 1404
    .end local v2           #flymeFileFlag:I
    .end local v4           #flymeSmsFlag:I
    .end local v5           #smsObject:Lorg/json/JSONObject;
    .end local v6           #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1405
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1406
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public getReceiverContactURI(Ljavax/sip/message/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1028
    :try_start_0
    const-string v1, "Contact"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContactHeader;

    .line 1029
    .local v0, contactHeader:Ljavax/sip/header/ContactHeader;
    if-eqz v0, :cond_0

    .line 1030
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    check-cast v1, Ljavax/sip/address/SipURI;

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mOtherSideURI:Ljavax/sip/address/SipURI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    .end local v0           #contactHeader:Ljavax/sip/header/ContactHeader;
    :cond_0
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;
    .locals 35
    .parameter "responseEvent"
    .parameter "accountManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    move-object/from16 v30, v0

    check-cast v30, Lgov/nist/javax/sip/SipStackExt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/SipStackExt;->getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;

    move-result-object v9

    .line 781
    .local v9, authenticationHelper:Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    invoke-virtual/range {p1 .. p1}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v27

    .line 782
    .local v27, tid:Ljavax/sip/ClientTransaction;
    invoke-virtual/range {p1 .. p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v23

    .line 783
    .local v23, response:Ljavax/sip/message/Response;
    const-string v30, "Server"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v25

    check-cast v25, Ljavax/sip/header/ServerHeader;

    .line 784
    .local v25, serverHeader:Ljavax/sip/header/ServerHeader;
    invoke-interface/range {v25 .. v25}, Ljavax/sip/header/ServerHeader;->getProduct()Ljava/util/ListIterator;

    move-result-object v26

    .line 785
    .local v26, serverProduct:Ljava/util/ListIterator;
    const/4 v10, 0x0

    .line 786
    .local v10, bOwnProduct:Z
    :cond_0
    if-eqz v26, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/ListIterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 787
    invoke-interface/range {v26 .. v26}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 788
    .local v21, ownProduct:Ljava/lang/String;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    const-string v31, "MEIZU-SipServer"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 789
    const/4 v10, 0x1

    .line 790
    const-string v30, "WWW-Authenticate"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v8

    check-cast v8, Ljavax/sip/header/WWWAuthenticateHeader;

    .line 792
    .local v8, authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    :try_start_0
    const-string v30, "MD5_MEIZU"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Ljavax/sip/header/WWWAuthenticateHeader;->setAlgorithm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v8           #authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v21           #ownProduct:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v30, "Via"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v29

    check-cast v29, Ljavax/sip/header/ViaHeader;

    .line 802
    .local v29, viaHeader:Ljavax/sip/header/ViaHeader;
    invoke-interface/range {v29 .. v29}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v24

    .line 803
    .local v24, rport:I
    invoke-interface/range {v29 .. v29}, Ljavax/sip/header/ViaHeader;->getReceived()Ljava/lang/String;

    move-result-object v22

    .line 804
    .local v22, receive:Ljava/lang/String;
    if-eqz v22, :cond_2

    if-eqz v10, :cond_2

    .line 805
    invoke-interface/range {v27 .. v27}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v30

    const-string v31, "From"

    invoke-interface/range {v30 .. v31}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v16

    check-cast v16, Ljavax/sip/header/FromHeader;

    .line 806
    .local v16, fromHeader:Ljavax/sip/header/FromHeader;
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v17

    check-cast v17, Lgov/nist/javax/sip/address/SipUri;

    .line 807
    .local v17, fromeUri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/address/SipUri;->getAuthority()Lgov/nist/javax/sip/address/Authority;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lgov/nist/javax/sip/address/Authority;->getUser()Ljava/lang/String;

    move-result-object v20

    .line 810
    .local v20, name:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v28

    .line 811
    .local v28, uri:Ljavax/sip/address/SipURI;
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 812
    const-string v30, "TLS"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v11

    .line 814
    .local v11, contactAddress:Ljavax/sip/address/Address;
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/FromHeader;->getDisplayName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v11}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v12

    .line 816
    .local v12, contactHeader:Ljavax/sip/header/ContactHeader;
    invoke-interface/range {v27 .. v27}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v30

    const-string v31, "Contact"

    invoke-interface/range {v30 .. v31}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 817
    invoke-interface/range {v27 .. v27}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v0, v12}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 824
    .end local v11           #contactAddress:Ljavax/sip/address/Address;
    .end local v12           #contactHeader:Ljavax/sip/header/ContactHeader;
    .end local v16           #fromHeader:Ljavax/sip/header/FromHeader;
    .end local v17           #fromeUri:Lgov/nist/javax/sip/address/SipUri;
    .end local v20           #name:Ljava/lang/String;
    .end local v28           #uri:Ljavax/sip/address/SipURI;
    :cond_2
    :goto_1
    const-string v30, "SipHelper"

    const-string v31, "AccountManager"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 826
    .local v6, am:Landroid/accounts/AccountManager;
    const-string v30, "com.meizu.account"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 827
    .local v5, accounts:[Landroid/accounts/Account;
    if-eqz v5, :cond_3

    array-length v0, v5

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 828
    :cond_3
    const-string v30, "SipHelper"

    const-string v31, "no flyme account"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :try_start_2
    invoke-interface/range {v27 .. v27}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v30

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->CreateAbilityInfo()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    move-object/from16 v32, v0

    const-string v33, "application"

    const-string v34, "text"

    invoke-interface/range {v32 .. v34}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 853
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    move-object/from16 v30, v0

    const/16 v31, 0x5

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v9, v0, v1, v2, v3}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;->handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;

    move-result-object v13

    .line 855
    .local v13, ct:Ljavax/sip/ClientTransaction;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v30

    if-eqz v30, :cond_5

    sget-object v30, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v31, "send request with handleChallenge "

    invoke-static/range {v30 .. v31}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_5
    new-instance v30, Ljava/lang/Thread;

    new-instance v31, Lcom/android/server/sip/SipHelper$7;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/server/sip/SipHelper$7;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct/range {v30 .. v31}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->start()V

    .line 866
    return-object v13

    .line 793
    .end local v5           #accounts:[Landroid/accounts/Account;
    .end local v6           #am:Landroid/accounts/AccountManager;
    .end local v13           #ct:Ljavax/sip/ClientTransaction;
    .end local v22           #receive:Ljava/lang/String;
    .end local v24           #rport:I
    .end local v29           #viaHeader:Ljavax/sip/header/ViaHeader;
    .restart local v8       #authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v21       #ownProduct:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 795
    .local v14, e:Ljava/text/ParseException;
    invoke-virtual {v14}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 819
    .end local v8           #authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v14           #e:Ljava/text/ParseException;
    .end local v21           #ownProduct:Ljava/lang/String;
    .restart local v16       #fromHeader:Ljavax/sip/header/FromHeader;
    .restart local v17       #fromeUri:Lgov/nist/javax/sip/address/SipUri;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v22       #receive:Ljava/lang/String;
    .restart local v24       #rport:I
    .restart local v29       #viaHeader:Ljavax/sip/header/ViaHeader;
    :catch_1
    move-exception v15

    .line 821
    .local v15, e1:Ljava/text/ParseException;
    invoke-virtual {v15}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 833
    .end local v15           #e1:Ljava/text/ParseException;
    .end local v16           #fromHeader:Ljavax/sip/header/FromHeader;
    .end local v17           #fromeUri:Lgov/nist/javax/sip/address/SipUri;
    .end local v20           #name:Ljava/lang/String;
    .restart local v5       #accounts:[Landroid/accounts/Account;
    .restart local v6       #am:Landroid/accounts/AccountManager;
    :catch_2
    move-exception v15

    .line 835
    .restart local v15       #e1:Ljava/text/ParseException;
    invoke-virtual {v15}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 838
    .end local v15           #e1:Ljava/text/ParseException;
    :cond_6
    move-object v7, v5

    .local v7, arr$:[Landroid/accounts/Account;
    array-length v0, v7

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v4, v7, v18

    .line 839
    .local v4, account:Landroid/accounts/Account;
    if-eqz v10, :cond_7

    .line 841
    :try_start_3
    const-string v30, "SipHelper"

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-interface/range {v27 .. v27}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v30

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/sip/SipHelper;->CreateRoleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    move-object/from16 v32, v0

    const-string v33, "application"

    const-string v34, "text"

    invoke-interface/range {v32 .. v34}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 838
    :cond_7
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 845
    :catch_3
    move-exception v15

    .line 847
    .restart local v15       #e1:Ljava/text/ParseException;
    invoke-virtual {v15}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4
.end method

.method public hasFlymeAccount(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1413
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1414
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v2, "com.meizu.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1415
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1416
    const/4 v2, 0x1

    .line 1418
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendBye(Ljavax/sip/Dialog;Z)V
    .locals 5
    .parameter "dialog"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1231
    const-string v2, "BYE"

    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 1236
    .local v0, byeRequest:Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mOtherSideURI:Ljavax/sip/address/SipURI;

    if-eqz v2, :cond_0

    .line 1237
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mOtherSideURI:Ljavax/sip/address/SipURI;

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 1238
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send BYE: otherSideURI= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mOtherSideURI:Ljavax/sip/address/SipURI;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 1243
    .local v1, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/sip/SipHelper$16;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/sip/SipHelper$16;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/Dialog;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1252
    return-void
.end method

.method public sendCancel(Ljavax/sip/ClientTransaction;Z)V
    .locals 4
    .parameter "inviteTransaction"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->createCancel()Ljavax/sip/message/Request;

    move-result-object v0

    .line 1257
    .local v0, cancelRequest:Ljavax/sip/message/Request;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v3, "send CANCEL: "

    invoke-static {v2, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 1261
    .local v1, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/sip/SipHelper$17;

    invoke-direct {v3, p0, v1}, Lcom/android/server/sip/SipHelper$17;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1270
    return-void
.end method

.method public sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/sip/ClientTransaction;
    .locals 23
    .parameter "caller"
    .parameter "callee"
    .parameter "sessionDescription"
    .parameter "tag"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 915
    const/16 v17, 0x1

    .line 916
    .local v17, sendPhoneNumber:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "internet_call_send_callerid"

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 919
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sendPhoneNumber = "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    const/4 v12, 0x1

    .line 923
    .local v12, bShowDisplayName:Z
    if-nez p5, :cond_1

    if-nez v17, :cond_1

    .line 924
    const/4 v12, 0x0

    .line 926
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/sip/SipHelper;->createFromHeaderEx(Landroid/net/sip/SipProfile;Ljava/lang/String;Z)Ljavax/sip/header/FromHeader;

    move-result-object v8

    .line 927
    .local v8, fromHeader:Ljavax/sip/header/FromHeader;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v9

    .line 928
    .local v9, toHeader:Ljavax/sip/header/ToHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    const-string v5, "invite"

    invoke-virtual/range {p2 .. p2}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v5, v0}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v4

    .line 929
    .local v4, requestURI:Ljavax/sip/address/SipURI;
    invoke-virtual/range {p2 .. p2}, Landroid/net/sip/SipProfile;->getPort()I

    move-result v3

    invoke-interface {v4, v3}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v10

    .line 932
    .local v10, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    if-eqz p5, :cond_4

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->createTransferCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v6

    .line 937
    .local v6, callIdHeader:Ljavax/sip/header/CallIdHeader;
    :goto_0
    const-string v3, "INVITE"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    .line 938
    .local v7, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v11

    .line 940
    .local v11, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const-string v5, "INVITE"

    invoke-interface/range {v3 .. v11}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v16

    .line 944
    .local v16, request:Ljavax/sip/message/Request;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "Version"

    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v5, v0}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v21

    .line 947
    .local v21, versionHeader:Ljavax/sip/header/Header;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "sip_receiver_display_number"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 950
    .local v15, ownDisplayName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/sip/SipHelper;->getMyAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 951
    .local v19, userAgent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "User-Agent"

    move-object/from16 v0, v19

    invoke-interface {v3, v5, v0}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v20

    .line 953
    .local v20, userAgentHeader:Ljavax/sip/header/Header;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "application"

    const-string v22, "sdp"

    move-object/from16 v0, v22

    invoke-interface {v3, v5, v0}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v3}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 959
    if-eqz p5, :cond_2

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "Transfer-Flag"

    const-string v22, "true"

    move-object/from16 v0, v22

    invoke-interface {v3, v5, v0}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v18

    .line 962
    .local v18, transferHeader:Ljavax/sip/header/Header;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 965
    .end local v18           #transferHeader:Ljavax/sip/header/Header;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v13

    .line 967
    .local v13, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "send INVITE: To "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_3
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sip/SipHelper$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lcom/android/server/sip/SipHelper$8;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 978
    return-object v13

    .line 935
    .end local v6           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v7           #cSeqHeader:Ljavax/sip/header/CSeqHeader;
    .end local v11           #maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    .end local v13           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v15           #ownDisplayName:Ljava/lang/String;
    .end local v16           #request:Ljavax/sip/message/Request;
    .end local v19           #userAgent:Ljava/lang/String;
    .end local v20           #userAgentHeader:Ljavax/sip/header/Header;
    .end local v21           #versionHeader:Ljavax/sip/header/Header;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .restart local v6       #callIdHeader:Ljavax/sip/header/CallIdHeader;
    goto/16 :goto_0

    .line 979
    .end local v4           #requestURI:Ljavax/sip/address/SipURI;
    .end local v6           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v8           #fromHeader:Ljavax/sip/header/FromHeader;
    .end local v9           #toHeader:Ljavax/sip/header/ToHeader;
    .end local v10           #viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    .end local v12           #bShowDisplayName:Z
    :catch_0
    move-exception v14

    .line 980
    .local v14, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v5, "sendInvite()"

    invoke-direct {v3, v5, v14}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;Z)V
    .locals 7
    .parameter "event"
    .parameter "dialog"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    .line 1213
    .local v3, response:Ljavax/sip/message/Response;
    const-string v4, "CSeq"

    invoke-interface {v3, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/CSeqHeader;

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    .line 1215
    .local v1, cseq:J
    invoke-interface {p2, v1, v2}, Ljavax/sip/Dialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v0

    .line 1216
    .local v0, ack:Ljavax/sip/message/Request;
    invoke-interface {v0}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    check-cast v4, Ljavax/sip/address/SipURI;

    iput-object v4, p0, Lcom/android/server/sip/SipHelper;->mOtherSideURI:Ljavax/sip/address/SipURI;

    .line 1217
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send ACK: cseq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sip/SipHelper$15;

    invoke-direct {v5, p0, p2, v0}, Lcom/android/server/sip/SipHelper$15;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1228
    return-void
.end method

.method public sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;Z)V
    .locals 6
    .parameter "event"
    .parameter "inviteTransaction"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1152
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 1153
    .local v1, request:Ljavax/sip/message/Request;
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v5, 0x1e6

    invoke-interface {v4, v5, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 1168
    .local v2, response:Ljavax/sip/message/Response;
    if-nez p2, :cond_2

    .line 1169
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v3

    .line 1170
    .local v3, stInviteTransaction:Ljavax/sip/ServerTransaction;
    invoke-interface {v3}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v4, v5, :cond_1

    .line 1171
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v5, "sendInviteBusyHere "

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sip/SipHelper$13;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/server/sip/SipHelper$13;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1200
    .end local v3           #stInviteTransaction:Ljavax/sip/ServerTransaction;
    :cond_1
    :goto_0
    return-void

    .line 1186
    :cond_2
    invoke-interface {p2}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v4, v5, :cond_1

    .line 1187
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v5, "sendInviteBusyHere "

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :cond_3
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sip/SipHelper$14;

    invoke-direct {v5, p0, p2, v2}, Lcom/android/server/sip/SipHelper$14;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 1203
    .local v0, e:Ljava/text/ParseException;
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "sendInviteBusyHere()"

    invoke-direct {v4, v5, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Z)Ljavax/sip/ServerTransaction;
    .locals 10
    .parameter "event"
    .parameter "localProfile"
    .parameter "sessionDescription"
    .parameter "inviteTransaction"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1090
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    .line 1091
    .local v3, request:Ljavax/sip/message/Request;
    iget-object v7, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v8, 0xc8

    invoke-interface {v7, v8, v3}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v4

    .line 1093
    .local v4, response:Ljavax/sip/message/Response;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v7

    invoke-interface {v4, v7}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1095
    iget-object v7, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v8, "application"

    const-string v9, "sdp"

    invoke-interface {v7, v8, v9}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v7

    invoke-interface {v4, p3, v7}, Ljavax/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 1100
    iget-object v7, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mSipInviteURI:Ljavax/sip/address/SipURI;

    invoke-interface {v7, v8}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v0

    .line 1101
    .local v0, contactAddress:Ljavax/sip/address/Address;
    iget-object v7, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v7, v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v1

    .line 1102
    .local v1, contactHeader:Ljavax/sip/header/ContactHeader;
    const-string v7, "Contact"

    invoke-interface {v4, v7}, Ljavax/sip/message/Response;->removeHeader(Ljava/lang/String;)V

    .line 1103
    invoke-interface {v4, v1}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1104
    if-eqz p5, :cond_0

    .line 1105
    iget-object v7, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v8, "Transfer-Flag"

    const-string v9, "true"

    invoke-interface {v7, v8, v9}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v6

    .line 1107
    .local v6, transferHeader:Ljavax/sip/header/Header;
    invoke-interface {v4, v6}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1109
    .end local v6           #transferHeader:Ljavax/sip/header/Header;
    :cond_0
    if-nez p4, :cond_3

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v5

    .line 1111
    .local v5, stInviteTransaction:Ljavax/sip/ServerTransaction;
    invoke-interface {v5}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    sget-object v8, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v7, v8, :cond_2

    .line 1112
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v8, "sendInviteOk "

    invoke-static {v7, v8}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :cond_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/sip/SipHelper$11;

    invoke-direct {v8, p0, v5, v4}, Lcom/android/server/sip/SipHelper$11;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1141
    .end local v5           #stInviteTransaction:Ljavax/sip/ServerTransaction;
    :cond_2
    :goto_0
    return-object v5

    .line 1127
    :cond_3
    invoke-interface {p4}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    sget-object v8, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v7, v8, :cond_5

    .line 1128
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v8, "sendInviteOk "

    invoke-static {v7, v8}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_4
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/sip/SipHelper$12;

    invoke-direct {v8, p0, p4, v4}, Lcom/android/server/sip/SipHelper$12;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v5, p4

    .line 1141
    goto :goto_0

    .line 1144
    .end local v0           #contactAddress:Ljavax/sip/address/Address;
    .end local v1           #contactHeader:Ljavax/sip/header/ContactHeader;
    .end local v3           #request:Ljavax/sip/message/Request;
    .end local v4           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v2

    .line 1145
    .local v2, e:Ljava/text/ParseException;
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "sendInviteOk()"

    invoke-direct {v7, v8, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V
    .locals 4
    .parameter "inviteRequest"
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1327
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v3, 0x1e7

    invoke-interface {v2, v3, p1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .line 1329
    .local v1, response:Ljavax/sip/message/Response;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v3, "sendInviteRequestTerminated: "

    invoke-static {v2, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/sip/SipHelper$20;

    invoke-direct {v3, p0, p2, v1}, Lcom/android/server/sip/SipHelper$20;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    return-void

    .line 1340
    .end local v1           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 1341
    .local v0, e:Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "sendInviteRequestTerminated()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendKeepAlive(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 6
    .parameter "userProfile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 322
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    if-nez v4, :cond_0

    .line 323
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    const-string v4, "sip"

    iget-object v5, p0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v0, builder:Landroid/net/sip/SipProfile$Builder;
    iget v4, p0, Lcom/android/server/sip/SipHelper;->mPort:I

    invoke-virtual {v0, v4}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 325
    const-string v4, "TLS"

    invoke-virtual {v0, v4}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sip/SipHelper;->mPushServerProfile:Landroid/net/sip/SipProfile;

    .line 328
    .end local v0           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_0
    const-string v4, "OPTIONS"

    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v3

    .line 330
    .local v3, request:Ljavax/sip/message/Request;
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v4, v3}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 333
    .local v1, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sip/SipHelper$2;

    invoke-direct {v5, p0, v1}, Lcom/android/server/sip/SipHelper$2;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 342
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    sget-object v4, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v5, "Send KeepAlive Option "

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_1
    return-object v1

    .line 350
    .end local v1           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v3           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v2

    .line 351
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "sendKeepAlive()"

    invoke-direct {v4, v5, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public sendMessageResponse(Ljavax/sip/RequestEvent;I)V
    .locals 9
    .parameter "event"
    .parameter "responseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1295
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    .line 1296
    .local v3, request:Ljavax/sip/message/Request;
    iget-object v6, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    invoke-interface {v6, p2, v3}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v4

    .line 1298
    .local v4, response:Ljavax/sip/message/Response;
    const-string v6, "In-Reply-To"

    invoke-interface {v3, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/InReplyToHeader;

    .line 1299
    .local v1, inReplyToHeader:Ljavax/sip/header/InReplyToHeader;
    if-eqz v1, :cond_0

    .line 1300
    invoke-interface {v4, v1}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1302
    :cond_0
    const-string v6, "Message-Id"

    invoke-interface {v3, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    .line 1303
    .local v2, messageId:Ljavax/sip/header/Header;
    if-eqz v2, :cond_1

    .line 1304
    invoke-interface {v4, v2}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1306
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send MessageResponse: responseCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v5

    .line 1309
    .local v5, transaction:Ljavax/sip/ServerTransaction;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/sip/SipHelper$19;

    invoke-direct {v7, p0, v5, v4}, Lcom/android/server/sip/SipHelper$19;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1323
    return-void

    .line 1318
    .end local v1           #inReplyToHeader:Ljavax/sip/header/InReplyToHeader;
    .end local v2           #messageId:Ljavax/sip/header/Header;
    .end local v3           #request:Ljavax/sip/message/Request;
    .end local v4           #response:Ljavax/sip/message/Response;
    .end local v5           #transaction:Ljavax/sip/ServerTransaction;
    :catch_0
    move-exception v0

    .line 1319
    .local v0, e:Ljava/text/ParseException;
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "send MessageResponse()"

    invoke-direct {v6, v7, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1320
    .end local v0           #e:Ljava/text/ParseException;
    :catch_1
    move-exception v0

    .line 1321
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "send MessageResponse()"

    invoke-direct {v6, v7, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 6
    .parameter "caller"
    .parameter "callee"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 297
    if-ne p1, p2, :cond_0

    :try_start_0
    const-string v3, "OPTIONS"

    invoke-direct {p0, v3, p1, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 301
    .local v2, request:Ljavax/sip/message/Request;
    :goto_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 304
    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/sip/SipHelper$1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/sip/SipHelper$1;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 313
    return-object v0

    .line 297
    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v2           #request:Ljavax/sip/message/Request;
    :cond_0
    const-string v3, "OPTIONS"

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Interval"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception sendOptions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendOptions()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;
    .locals 7
    .parameter "userProfile"
    .parameter "tag"
    .parameter "expiry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 358
    :try_start_0
    const-string v4, "REGISTER"

    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 359
    .local v2, request:Ljavax/sip/message/Request;
    if-nez p3, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createWildcardContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 366
    :goto_0
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "Version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    .line 368
    .local v3, versionHeader:Ljavax/sip/header/Header;
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 369
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v4, p3}, Ljavax/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 371
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v4, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 373
    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sip/SipHelper$3;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sip/SipHelper$3;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 382
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    sget-object v4, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendRegister Expiry = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    return-object v0

    .line 364
    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v3           #versionHeader:Ljavax/sip/header/Header;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v2           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Ljava/text/ParseException;
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "sendRegister()"

    invoke-direct {v4, v5, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;Z)Ljavax/sip/ClientTransaction;
    .locals 8
    .parameter "dialog"
    .parameter "sessionDescription"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 987
    :try_start_0
    const-string v5, "INVITE"

    invoke-interface {p1, v5}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v3

    .line 988
    .local v3, request:Ljavax/sip/message/Request;
    iget-object v5, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v6, "application"

    const-string v7, "sdp"

    invoke-interface {v5, v6, v7}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v5

    invoke-interface {v3, p2, v5}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 991
    if-eqz p3, :cond_0

    .line 992
    iget-object v5, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v6, "Transfer-Flag"

    const-string v7, "true"

    invoke-interface {v5, v6, v7}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    .line 994
    .local v4, transferHeader:Ljavax/sip/header/Header;
    invoke-interface {v3, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 996
    .end local v4           #transferHeader:Ljavax/sip/header/Header;
    :cond_0
    iget-object v5, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v5, v3}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 998
    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v6, "send RE-INVITE: "

    invoke-static {v5, v6}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_1
    move-object v1, p1

    .line 1001
    .local v1, ctDialog:Ljavax/sip/Dialog;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/sip/SipHelper$9;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/server/sip/SipHelper$9;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/Dialog;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    return-object v0

    .line 1011
    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v1           #ctDialog:Ljavax/sip/Dialog;
    .end local v3           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v2

    .line 1012
    .local v2, e:Ljava/text/ParseException;
    new-instance v5, Ljavax/sip/SipException;

    const-string v6, "sendReinvite()"

    invoke-direct {v5, v6, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public sendReport(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 26
    .parameter "userProfile"
    .parameter "tag"
    .parameter "contentData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 492
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mSmsServerProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 493
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    const-string v23, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .local v2, builder:Landroid/net/sip/SipProfile$Builder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sip/SipHelper;->mPort:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 495
    const-string v23, "TLS"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 496
    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/sip/SipHelper;->mSmsServerProfile:Landroid/net/sip/SipProfile;

    .line 499
    .end local v2           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_0
    const-string v5, ""

    .line 500
    .local v5, dest:Ljava/lang/String;
    const-string v8, ""

    .line 501
    .local v8, id:Ljava/lang/String;
    const-string v21, "report"

    .line 502
    .local v21, type:Ljava/lang/String;
    const-string v19, "200"

    .line 503
    .local v19, status:Ljava/lang/String;
    const-string v13, ""

    .line 504
    .local v13, port:Ljava/lang/String;
    const-string v18, "sms"

    .line 505
    .local v18, smstype:Ljava/lang/String;
    const-string v22, ""

    .line 506
    .local v22, ver:Ljava/lang/String;
    const-string v20, ""

    .line 507
    .local v20, stype:Ljava/lang/String;
    const-string v6, ""

    .line 508
    .local v6, dtype:Ljava/lang/String;
    const/4 v15, 0x1

    .line 509
    .local v15, reportStatus:I
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    .local v14, reportObject:Lorg/json/JSONObject;
    :try_start_1
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    .local v17, smsObject:Lorg/json/JSONObject;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v12

    .line 513
    .local v12, keys:Lorg/json/JSONArray;
    if-eqz v12, :cond_9

    .line 514
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_9

    .line 515
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 516
    .local v11, key:Ljava/lang/String;
    const-string v23, "src"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 517
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    :cond_1
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 519
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 520
    :cond_2
    const-string v23, "port"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 521
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 522
    :cond_3
    const-string v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 523
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 524
    :cond_4
    const-string v23, "ver"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 525
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 526
    :cond_5
    const-string v23, "dtype"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 527
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 528
    :cond_6
    const-string v23, "stype"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 529
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 530
    :cond_7
    const-string v23, "report_status"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 531
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 514
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 535
    .end local v10           #j:I
    .end local v11           #key:Ljava/lang/String;
    :cond_9
    const-string v23, "ver"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v23, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v23, "report_status"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 539
    const-string v23, "1.1"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 540
    const-string v23, "stype"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string v23, "flyme"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 542
    const-string v23, "dest_flyme"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    :cond_a
    const-string v23, "phone"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 545
    const-string v23, "dest"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    :cond_b
    const-string v23, "email"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 548
    const-string v23, "dest_mail"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    :cond_c
    :goto_1
    const-string v23, "status"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v23, "smstype"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    .end local v12           #keys:Lorg/json/JSONArray;
    .end local v17           #smsObject:Lorg/json/JSONObject;
    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/sip/SipHelper;->createReportRequest(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v16

    .line 561
    .local v16, request:Ljavax/sip/message/Request;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljavax/sip/header/HeaderFactory;->createInReplyToHeader(Ljava/lang/String;)Ljavax/sip/header/InReplyToHeader;

    move-result-object v9

    .line 563
    .local v9, inReplyToHeader:Ljavax/sip/header/InReplyToHeader;
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 564
    if-eqz v14, :cond_d

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    move-object/from16 v23, v0

    const-string v24, "application"

    const-string v25, "sms"

    invoke-interface/range {v23 .. v25}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v4

    .line 567
    .local v4, contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;
    const-string v23, "charset"

    const-string v24, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v4, v0, v1}, Ljavax/sip/header/ContentTypeHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v4}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 571
    .end local v4           #contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v3

    .line 574
    .local v3, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v23, Ljava/lang/Thread;

    new-instance v24, Lcom/android/server/sip/SipHelper$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/sip/SipHelper$6;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct/range {v23 .. v24}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    .line 583
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 584
    sget-object v23, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sendReport id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " dest = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 587
    :cond_e
    return-object v3

    .line 551
    .end local v3           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v9           #inReplyToHeader:Ljavax/sip/header/InReplyToHeader;
    .end local v16           #request:Ljavax/sip/message/Request;
    .restart local v12       #keys:Lorg/json/JSONArray;
    .restart local v17       #smsObject:Lorg/json/JSONObject;
    :cond_f
    :try_start_3
    const-string v23, "dest"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 555
    .end local v12           #keys:Lorg/json/JSONArray;
    .end local v17           #smsObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 557
    .local v7, e:Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 588
    .end local v5           #dest:Ljava/lang/String;
    .end local v6           #dtype:Ljava/lang/String;
    .end local v7           #e:Lorg/json/JSONException;
    .end local v8           #id:Ljava/lang/String;
    .end local v13           #port:Ljava/lang/String;
    .end local v14           #reportObject:Lorg/json/JSONObject;
    .end local v15           #reportStatus:I
    .end local v18           #smstype:Ljava/lang/String;
    .end local v19           #status:Ljava/lang/String;
    .end local v20           #stype:Ljava/lang/String;
    .end local v21           #type:Ljava/lang/String;
    .end local v22           #ver:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 589
    .local v7, e:Ljava/text/ParseException;
    new-instance v23, Ljavax/sip/SipException;

    const-string v24, "sendSms()"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23
.end method

.method public sendResponse(Ljavax/sip/RequestEvent;I)V
    .locals 6
    .parameter "event"
    .parameter "responseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1275
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .line 1277
    .local v1, response:Ljavax/sip/message/Response;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send response: responseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    .line 1280
    .local v2, transaction:Ljavax/sip/ServerTransaction;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/sip/SipHelper$18;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/sip/SipHelper$18;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    return-void

    .line 1289
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #transaction:Ljavax/sip/ServerTransaction;
    :catch_0
    move-exception v0

    .line 1290
    .local v0, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendResponse()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;Z)Ljavax/sip/ServerTransaction;
    .locals 12
    .parameter "event"
    .parameter "tag"
    .parameter "bFileTransfer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1043
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    .line 1044
    .local v4, request:Ljavax/sip/message/Request;
    invoke-interface {v4}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v9

    check-cast v9, Ljavax/sip/address/SipURI;

    iput-object v9, p0, Lcom/android/server/sip/SipHelper;->mSipInviteURI:Ljavax/sip/address/SipURI;

    .line 1045
    const-string v9, "Contact"

    invoke-interface {v4, v9}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ContactHeader;

    .line 1046
    .local v1, contactHeader:Ljavax/sip/header/ContactHeader;
    invoke-interface {v1}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v9

    check-cast v9, Ljavax/sip/address/SipURI;

    iput-object v9, p0, Lcom/android/server/sip/SipHelper;->mCallerContactURI:Ljavax/sip/address/SipURI;

    .line 1047
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sip/SipHelper;->mSipInviteURI:Ljavax/sip/address/SipURI;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Contact="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sip/SipHelper;->mCallerContactURI:Ljavax/sip/address/SipURI;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v7

    .line 1050
    .local v7, transaction:Ljavax/sip/ServerTransaction;
    iget-object v9, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v10, 0xb4

    invoke-interface {v9, v10, v4}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v5

    .line 1053
    .local v5, response:Ljavax/sip/message/Response;
    const-string v9, "To"

    invoke-interface {v5, v9}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v6

    check-cast v6, Ljavax/sip/header/ToHeader;

    .line 1054
    .local v6, toHeader:Ljavax/sip/header/ToHeader;
    invoke-interface {v6, p2}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 1055
    invoke-interface {v5, v6}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1056
    iget-object v9, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    iget-object v10, p0, Lcom/android/server/sip/SipHelper;->mSipInviteURI:Ljavax/sip/address/SipURI;

    invoke-interface {v9, v10}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v0

    .line 1057
    .local v0, contactAddress:Ljavax/sip/address/Address;
    iget-object v9, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v9, v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    .line 1058
    .local v3, ownContactHeader:Ljavax/sip/header/ContactHeader;
    const-string v9, "Contact"

    invoke-interface {v5, v9}, Ljavax/sip/message/Response;->removeHeader(Ljava/lang/String;)V

    .line 1059
    invoke-interface {v5, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1060
    if-eqz p3, :cond_1

    .line 1061
    iget-object v9, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v10, "Transfer-Flag"

    const-string v11, "true"

    invoke-interface {v9, v10, v11}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v8

    .line 1063
    .local v8, transferHeader:Ljavax/sip/header/Header;
    invoke-interface {v5, v8}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 1065
    .end local v8           #transferHeader:Ljavax/sip/header/Header;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    const-string v10, "send RINGING: "

    invoke-static {v9, v10}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/server/sip/SipHelper$10;

    invoke-direct {v10, p0, v7, v5}, Lcom/android/server/sip/SipHelper$10;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ServerTransaction;Ljavax/sip/message/Response;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    return-object v7

    .line 1077
    .end local v0           #contactAddress:Ljavax/sip/address/Address;
    .end local v1           #contactHeader:Ljavax/sip/header/ContactHeader;
    .end local v3           #ownContactHeader:Ljavax/sip/header/ContactHeader;
    .end local v4           #request:Ljavax/sip/message/Request;
    .end local v5           #response:Ljavax/sip/message/Response;
    .end local v6           #toHeader:Ljavax/sip/header/ToHeader;
    .end local v7           #transaction:Ljavax/sip/ServerTransaction;
    :catch_0
    move-exception v2

    .line 1078
    .local v2, e:Ljava/text/ParseException;
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "sendRinging()"

    invoke-direct {v9, v10, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public sendSms(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/sip/ClientTransaction;
    .locals 11
    .parameter "userProfile"
    .parameter "tag"
    .parameter "contentData"
    .parameter "smsUUID"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 435
    :try_start_0
    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mSmsServerProfile:Landroid/net/sip/SipProfile;

    if-nez v8, :cond_0

    .line 436
    new-instance v1, Landroid/net/sip/SipProfile$Builder;

    const-string v8, "sms"

    iget-object v9, p0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .local v1, builder:Landroid/net/sip/SipProfile$Builder;
    iget v8, p0, Lcom/android/server/sip/SipHelper;->mPort:I

    invoke-virtual {v1, v8}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 438
    const-string v8, "TLS"

    invoke-virtual {v1, v8}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 439
    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/sip/SipHelper;->mSmsServerProfile:Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v1           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_0
    const/4 v0, 0x0

    .line 443
    .local v0, bFileReport:Z
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v8, "fileReport"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 445
    const/4 v0, 0x1

    .line 451
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 452
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sip/SipHelper;->sendReport(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    .line 484
    :cond_2
    :goto_1
    return-object v2

    .line 455
    :cond_3
    invoke-direct {p0, p1, p4, p2}, Lcom/android/server/sip/SipHelper;->createSmsRequest(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v7

    .line 456
    .local v7, request:Ljavax/sip/message/Request;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 457
    if-eqz p5, :cond_4

    .line 458
    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v9, "Report-Flag"

    const-string v10, "true"

    invoke-interface {v8, v9, v10}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v6

    .line 460
    .local v6, reportHeader:Ljavax/sip/header/Header;
    invoke-interface {v7, v6}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 462
    .end local v6           #reportHeader:Ljavax/sip/header/Header;
    :cond_4
    if-eqz p3, :cond_5

    .line 463
    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v9, "application"

    const-string v10, "sms"

    invoke-interface {v8, v9, v10}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    .line 465
    .local v3, contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;
    const-string v8, "charset"

    const-string v9, "UTF-8"

    invoke-interface {v3, v8, v9}, Ljavax/sip/header/ContentTypeHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-interface {v7, p3, v3}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 469
    .end local v3           #contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;
    :cond_5
    iget-object v8, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v8, v7}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    .line 472
    .local v2, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/sip/SipHelper$5;

    invoke-direct {v9, p0, v2}, Lcom/android/server/sip/SipHelper$5;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 481
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 482
    sget-object v8, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendSms contentData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  sms uuid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 485
    .end local v0           #bFileReport:Z
    .end local v2           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v7           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v4

    .line 486
    .local v4, e:Ljava/text/ParseException;
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "sendSms()"

    invoke-direct {v8, v9, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 448
    .end local v4           #e:Ljava/text/ParseException;
    .restart local v0       #bFileReport:Z
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public sendSubscribe(Landroid/net/sip/SipProfile;Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 7
    .parameter "userProfile"
    .parameter "tag"
    .parameter "expiry"
    .parameter "contentData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 394
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipHelper;->createSubscribeRequest(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v3

    .line 396
    .local v3, request:Ljavax/sip/message/Request;
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v4, p3}, Ljavax/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 397
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "application"

    const-string v6, "push+json"

    invoke-interface {v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 398
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "multipart"

    const-string v6, "related"

    invoke-interface {v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 400
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "push"

    invoke-interface {v4, v5}, Ljavax/sip/header/HeaderFactory;->createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;

    move-result-object v2

    .line 402
    .local v2, eventHeader:Ljavax/sip/header/EventHeader;
    invoke-interface {v3, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 404
    if-eqz p4, :cond_0

    .line 405
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "application"

    const-string v6, "push+json"

    invoke-interface {v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v4

    invoke-interface {v3, p4, v4}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v4, v3}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 414
    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sip/SipHelper$4;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sip/SipHelper$4;-><init>(Lcom/android/server/sip/SipHelper;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 424
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    sget-object v4, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSubscribe contentData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_1
    return-object v0

    .line 428
    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v2           #eventHeader:Ljavax/sip/header/EventHeader;
    .end local v3           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    .line 429
    .local v1, e:Ljava/text/ParseException;
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "sendSubscribe()"

    invoke-direct {v4, v5, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/sip/SipHelper;->mContext:Landroid/content/Context;

    .line 156
    return-void
.end method

.method public setDomainAndPort(Ljava/lang/String;I)V
    .locals 0
    .parameter "host"
    .parameter "port"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/sip/SipHelper;->mHost:Ljava/lang/String;

    .line 152
    iput p2, p0, Lcom/android/server/sip/SipHelper;->mPort:I

    .line 153
    return-void
.end method
