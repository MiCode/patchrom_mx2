.class public Lcom/android/gallery3d/util/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;
    }
.end annotation


# static fields
.field private static sCurrentAddress:Landroid/location/Address;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGeoCache:Lcom/android/gallery3d/common/BlobCache;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 80
    const-string v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    .line 83
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locality"

    .prologue
    .line 276
    if-nez p1, :cond_1

    .line 277
    const-string p1, ""

    .line 280
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 278
    .restart local p1
    :cond_1
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string p1, ""

    goto :goto_0
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 4
    .parameter "addr"
    .parameter "approxLocation"

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 285
    const-string v1, ""

    .line 301
    :cond_0
    :goto_0
    return-object v1

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, localityAdminStr:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 288
    if-eqz p2, :cond_2

    .line 295
    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, adminArea:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 301
    .end local v0           #adminArea:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 415
    .end local v0           #retVal:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "dos"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public computeAddress(Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 46
    .parameter "set"

    .prologue
    .line 89
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 90
    .local v4, setMinLatitude:D
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 91
    .local v6, setMinLongitude:D
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 92
    .local v9, setMaxLatitude:D
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 93
    .local v11, setMaxLongitude:D
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v3, v13, v15

    if-gez v3, :cond_0

    .line 95
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 96
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 97
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 98
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 100
    :cond_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v22

    .line 101
    .local v22, addr1:Landroid/location/Address;
    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v27

    .line 102
    .local v27, addr2:Landroid/location/Address;
    if-nez v22, :cond_1

    .line 103
    move-object/from16 v22, v27

    .line 104
    :cond_1
    if-nez v27, :cond_2

    .line 105
    move-object/from16 v27, v22

    .line 106
    :cond_2
    if-eqz v22, :cond_3

    if-nez v27, :cond_5

    .line 107
    :cond_3
    const/16 v33, 0x0

    .line 272
    :cond_4
    :goto_0
    return-object v33

    .line 112
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v8, "location"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/location/LocationManager;

    .line 114
    .local v42, locationManager:Landroid/location/LocationManager;
    const/16 v41, 0x0

    .line 115
    .local v41, location:Landroid/location/Location;
    invoke-virtual/range {v42 .. v42}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v45

    .line 116
    .local v45, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v40, 0x0

    .local v40, i:I
    :goto_1
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v40

    if-ge v0, v3, :cond_6

    .line 117
    move-object/from16 v0, v45

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 118
    .local v44, provider:Ljava/lang/String;
    if-eqz v44, :cond_a

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v41

    .line 119
    :goto_2
    if-eqz v41, :cond_b

    .line 122
    .end local v44           #provider:Ljava/lang/String;
    :cond_6
    const-string v37, ""

    .line 123
    .local v37, currentCity:Ljava/lang/String;
    const-string v36, ""

    .line 124
    .local v36, currentAdminArea:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v38

    .line 125
    .local v38, currentCountry:Ljava/lang/String;
    if-eqz v41, :cond_7

    .line 126
    invoke-virtual/range {v41 .. v41}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {v41 .. v41}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v35

    .line 128
    .local v35, currentAddress:Landroid/location/Address;
    if-nez v35, :cond_c

    .line 129
    sget-object v35, Lcom/android/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    .line 133
    :goto_3
    if-eqz v35, :cond_7

    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 134
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 135
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 136
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 140
    .end local v35           #currentAddress:Landroid/location/Address;
    :cond_7
    const/16 v33, 0x0

    .line 141
    .local v33, closestCommonLocation:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 142
    .local v26, addr1Locality:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 143
    .local v31, addr2Locality:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 144
    .local v23, addr1AdminArea:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 145
    .local v28, addr2AdminArea:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 146
    .local v25, addr1CountryCode:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 148
    .local v30, addr2CountryCode:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 149
    :cond_8
    move-object/from16 v43, v37

    .line 150
    .local v43, otherCity:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 151
    move-object/from16 v43, v31

    .line 152
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 153
    move-object/from16 v43, v28

    .line 154
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 158
    :cond_9
    move-object/from16 v31, v26

    .line 159
    move-object/from16 v28, v23

    .line 160
    move-object/from16 v30, v25

    .line 173
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 174
    if-eqz v33, :cond_f

    const-string v3, "null"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 175
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 118
    .end local v23           #addr1AdminArea:Ljava/lang/String;
    .end local v25           #addr1CountryCode:Ljava/lang/String;
    .end local v26           #addr1Locality:Ljava/lang/String;
    .end local v28           #addr2AdminArea:Ljava/lang/String;
    .end local v30           #addr2CountryCode:Ljava/lang/String;
    .end local v31           #addr2Locality:Ljava/lang/String;
    .end local v33           #closestCommonLocation:Ljava/lang/String;
    .end local v36           #currentAdminArea:Ljava/lang/String;
    .end local v37           #currentCity:Ljava/lang/String;
    .end local v38           #currentCountry:Ljava/lang/String;
    .end local v43           #otherCity:Ljava/lang/String;
    .restart local v44       #provider:Ljava/lang/String;
    :cond_a
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 116
    :cond_b
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_1

    .line 131
    .end local v44           #provider:Ljava/lang/String;
    .restart local v35       #currentAddress:Landroid/location/Address;
    .restart local v36       #currentAdminArea:Ljava/lang/String;
    .restart local v37       #currentCity:Ljava/lang/String;
    .restart local v38       #currentCountry:Ljava/lang/String;
    :cond_c
    sput-object v35, Lcom/android/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto/16 :goto_3

    .line 162
    .end local v35           #currentAddress:Landroid/location/Address;
    .restart local v23       #addr1AdminArea:Ljava/lang/String;
    .restart local v25       #addr1CountryCode:Ljava/lang/String;
    .restart local v26       #addr1Locality:Ljava/lang/String;
    .restart local v28       #addr2AdminArea:Ljava/lang/String;
    .restart local v30       #addr2CountryCode:Ljava/lang/String;
    .restart local v31       #addr2Locality:Ljava/lang/String;
    .restart local v33       #closestCommonLocation:Ljava/lang/String;
    .restart local v43       #otherCity:Ljava/lang/String;
    :cond_d
    move-object/from16 v43, v26

    .line 163
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 164
    move-object/from16 v43, v23

    .line 165
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 169
    :cond_e
    move-object/from16 v26, v31

    .line 170
    move-object/from16 v23, v28

    .line 171
    move-object/from16 v25, v30

    goto/16 :goto_4

    .line 182
    :cond_f
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 183
    if-eqz v33, :cond_10

    const-string v3, "null"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    .end local v43           #otherCity:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 190
    if-eqz v33, :cond_12

    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 191
    move-object/from16 v32, v23

    .line 192
    .local v32, adminArea:Ljava/lang/String;
    move-object/from16 v34, v25

    .line 193
    .local v34, countryCode:Ljava/lang/String;
    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 194
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 197
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 205
    .end local v32           #adminArea:Ljava/lang/String;
    .end local v34           #countryCode:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 206
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 207
    move-object/from16 v26, v31

    .line 209
    :cond_13
    const-string v3, ""

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 210
    move-object/from16 v31, v26

    .line 212
    :cond_14
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 213
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 216
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 224
    :cond_16
    const/4 v3, 0x1

    new-array v0, v3, [F

    move-object/from16 v21, v0

    .local v21, distanceFloat:[F
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    .line 225
    invoke-static/range {v13 .. v21}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 227
    const/4 v3, 0x0

    aget v3, v21, v3

    float-to-double v13, v3

    invoke-static {v13, v14}, Lcom/android/gallery3d/util/GalleryUtils;->toMile(D)D

    move-result-wide v13

    double-to-int v0, v13

    move/from16 v39, v0

    .line 228
    .local v39, distance:I
    const/16 v3, 0x14

    move/from16 v0, v39

    if-ge v0, v3, :cond_17

    .line 231
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v33

    .line 232
    if-nez v33, :cond_4

    .line 235
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v33

    .line 236
    if-nez v33, :cond_4

    .line 242
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 243
    if-eqz v33, :cond_18

    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 244
    move-object/from16 v34, v25

    .line 245
    .restart local v34       #countryCode:Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 246
    if-eqz v34, :cond_4

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 254
    .end local v34           #countryCode:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 255
    if-eqz v33, :cond_19

    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    :cond_19
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v24

    .line 260
    .local v24, addr1Country:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v29

    .line 261
    .local v29, addr2Country:Ljava/lang/String;
    if-nez v24, :cond_1a

    .line 262
    move-object/from16 v24, v25

    .line 263
    :cond_1a
    if-nez v29, :cond_1b

    .line 264
    move-object/from16 v29, v30

    .line 265
    :cond_1b
    if-eqz v24, :cond_1c

    if-nez v29, :cond_1d

    .line 266
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 267
    :cond_1d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-gt v3, v8, :cond_1e

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-le v3, v8, :cond_1f

    .line 268
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 270
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0
.end method

.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 24
    .parameter "latitude"
    .parameter "longitude"
    .parameter "useCache"

    .prologue
    .line 307
    const-wide v3, 0x4056800000000000L

    add-double v3, v3, p1

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    const-wide v5, 0x4056800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    add-double v5, v5, p3

    add-double/2addr v3, v5

    const-wide v5, 0x415854a640000000L

    mul-double/2addr v3, v5

    double-to-long v0, v3

    move-wide/from16 v19, v0

    .line 309
    .local v19, locationKey:J
    const/4 v12, 0x0

    .line 310
    .local v12, cachedLocation:[B
    if-eqz p5, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v12

    .line 313
    :cond_0
    const/4 v9, 0x0

    .line 314
    .local v9, address:Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    .line 315
    .local v21, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v12, :cond_1

    array-length v3, v12

    if-nez v3, :cond_7

    .line 316
    :cond_1
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    :cond_2
    const/4 v9, 0x0

    .line 396
    .end local v9           #address:Landroid/location/Address;
    .end local v21           #networkInfo:Landroid/net/NetworkInfo;
    :cond_3
    :goto_0
    return-object v9

    .line 319
    .restart local v9       #address:Landroid/location/Address;
    .restart local v21       #networkInfo:Landroid/net/NetworkInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 320
    .local v10, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 321
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #address:Landroid/location/Address;
    check-cast v9, Landroid/location/Address;

    .line 322
    .restart local v9       #address:Landroid/location/Address;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 323
    .local v11, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 324
    .local v15, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v9}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v18

    .line 325
    .local v18, locale:Ljava/util/Locale;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v9}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v9}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v22

    .line 331
    .local v22, numAddressLines:I
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 332
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 333
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 335
    :cond_5
    invoke-virtual {v9}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v9}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v9}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v9}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v9}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v9}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v9}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 350
    :cond_6
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_0

    .line 393
    .end local v9           #address:Landroid/location/Address;
    .end local v10           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v11           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v15           #dos:Ljava/io/DataOutputStream;
    .end local v16           #i:I
    .end local v18           #locale:Ljava/util/Locale;
    .end local v21           #networkInfo:Landroid/net/NetworkInfo;
    .end local v22           #numAddressLines:I
    :catch_0
    move-exception v3

    .line 396
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 354
    .restart local v9       #address:Landroid/location/Address;
    .restart local v21       #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 356
    .local v14, dis:Ljava/io/DataInputStream;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v17

    .line 357
    .local v17, language:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, country:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v23

    .line 359
    .local v23, variant:Ljava/lang/String;
    const/16 v18, 0x0

    .line 360
    .restart local v18       #locale:Ljava/util/Locale;
    if-eqz v17, :cond_8

    .line 361
    if-nez v13, :cond_9

    .line 362
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v18       #locale:Ljava/util/Locale;
    :cond_8
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 370
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 371
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v9

    goto/16 :goto_0

    .line 363
    :cond_9
    if-nez v23, :cond_a

    .line 364
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18       #locale:Ljava/util/Locale;
    goto :goto_2

    .line 366
    :cond_a
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18       #locale:Ljava/util/Locale;
    goto :goto_2

    .line 373
    :cond_b
    new-instance v9, Landroid/location/Address;

    .end local v9           #address:Landroid/location/Address;
    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 375
    .restart local v9       #address:Landroid/location/Address;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 377
    .restart local v22       #numAddressLines:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 378
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v9, v0, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 377
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 380
    :cond_c
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 381
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 382
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 383
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 385
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 386
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 387
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 388
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 389
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
