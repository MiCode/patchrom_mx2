.class public Lcom/android/camera/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/LocationManager$LocationListener;,
        Lcom/android/camera/LocationManager$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/camera/LocationManager$Listener;

.field private mLocation:Landroid/location/Location;

.field mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRecordLocation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/LocationManager$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/LocationManager$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/LocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    .line 48
    iput-object p1, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocation:Landroid/location/Location;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/LocationManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/LocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/LocationManager;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 108
    :cond_1
    :goto_1
    const-string v0, "LocationManager"

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    return-void

    .line 91
    :catch_0
    move-exception v6

    .line 92
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 94
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 104
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 105
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 106
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LocationManager"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 121
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "LocationManager"

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    .line 124
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method public recordLocation(Z)V
    .locals 1
    .parameter "recordLocation"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eq v0, p1, :cond_0

    .line 70
    iput-boolean p1, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    .line 71
    if-eqz p1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->startReceivingLocationUpdates()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method
