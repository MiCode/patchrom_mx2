.class final Lcom/android/internal/app/DockActionItem$1;
.super Ljava/lang/Object;
.source "DockActionItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/DockActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/app/DockActionItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/DockActionItem;
    .locals 1
    .parameter "source"

    .prologue
    .line 88
    new-instance v0, Lcom/android/internal/app/DockActionItem;

    invoke-direct {v0, p1}, Lcom/android/internal/app/DockActionItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/app/DockActionItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/DockActionItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/app/DockActionItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 93
    new-array v0, p1, [Lcom/android/internal/app/DockActionItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/app/DockActionItem$1;->newArray(I)[Lcom/android/internal/app/DockActionItem;

    move-result-object v0

    return-object v0
.end method
