.class Lcom/android/camera/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 133
    iput-object p2, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 135
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    iget-object v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 150
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    if-nez v0, :cond_2

    .line 151
    const-string v0, "LocationManager"

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/android/camera/LocationManager;->access$202(Lcom/android/camera/LocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 155
    iput-boolean v4, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 165
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 160
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 170
    packed-switch p2, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 174
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
