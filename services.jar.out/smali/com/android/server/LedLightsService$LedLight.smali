.class Lcom/android/server/LedLightsService$LedLight;
.super Ljava/lang/Object;
.source "LedLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LedLight"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LedService"


# instance fields
.field private mCurrent:I

.field private mId:I

.field final synthetic this$0:Lcom/android/server/LedLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LedLightsService;II)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "type"

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/server/LedLightsService$LedLight;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 771
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/LedLightsService$LedLight;->mCurrent:I

    .line 774
    add-int v0, p2, p3

    iput v0, p0, Lcom/android/server/LedLightsService$LedLight;->mId:I

    .line 775
    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/android/server/LedLightsService$LedLight;->mCurrent:I

    return v0
.end method

.method public setFlashing(III)V
    .locals 3
    .parameter "mode"
    .parameter "cycle"
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 778
    iput v2, p0, Lcom/android/server/LedLightsService$LedLight;->mCurrent:I

    .line 779
    iget-object v0, p0, Lcom/android/server/LedLightsService$LedLight;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$2500(Lcom/android/server/LedLightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LedLightsService$LedLight;->mId:I

    #calls: Lcom/android/server/LedLightsService;->setLight_native(III)V
    invoke-static {v0, v1, v2}, Lcom/android/server/LedLightsService;->access$2800(III)V

    .line 780
    return-void
.end method

.method public setLedLight(III)V
    .locals 2
    .parameter "cycle"
    .parameter "delay"
    .parameter "current"

    .prologue
    .line 784
    iput p3, p0, Lcom/android/server/LedLightsService$LedLight;->mCurrent:I

    .line 785
    iget-object v0, p0, Lcom/android/server/LedLightsService$LedLight;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$2500(Lcom/android/server/LedLightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LedLightsService$LedLight;->mId:I

    #calls: Lcom/android/server/LedLightsService;->setLight_native(III)V
    invoke-static {v0, v1, p3}, Lcom/android/server/LedLightsService;->access$2800(III)V

    .line 787
    return-void
.end method

.method public turnOffLight()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 794
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/LedLightsService$LedLight;->setLedLight(III)V

    .line 795
    return-void
.end method

.method public turnOnLight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/LedLightsService$LedLight;->setLedLight(III)V

    .line 791
    return-void
.end method
