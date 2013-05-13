.class public Lcom/android/camera/ui/CameraPicker;
.super Lcom/android/camera/ui/RotateImageView;
.source "CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mImageResource:I


# instance fields
.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 38
    sget v0, Lcom/android/camera/ui/CameraPicker;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setImageResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setId(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 65
    iget-object v3, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, index:I
    iget-object v3, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 67
    .local v2, values:[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 68
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, newCameraId:I
    return-void
.end method
