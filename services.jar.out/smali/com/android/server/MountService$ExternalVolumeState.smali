.class Lcom/android/server/MountService$ExternalVolumeState;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExternalVolumeState"
.end annotation


# static fields
.field public static final CHECKING:Ljava/lang/String; = "externalvolumechecking"

.field public static final INSERTED:Ljava/lang/String; = "externalvolumeinserted"

.field public static final Idle:Ljava/lang/String; = "externalvolumeidle"

.field public static final MOUNTED:Ljava/lang/String; = "externalvolumemounted"

.field public static final REMOVED:Ljava/lang/String; = "externalvolumeremoved"

.field public static final UNMOUNTED:Ljava/lang/String; = "externalvolumeunmounted"

.field public static final UNMOUNTING:Ljava/lang/String; = "externalvolumeunmounting"


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/MountService$ExternalVolumeState;->this$0:Lcom/android/server/MountService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
