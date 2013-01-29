.class public Lcom/android/gallery3d/util/BucketNames;
.super Ljava/lang/Object;
.source "BucketNames.java"


# static fields
.field public static final PHOTO:Ljava/lang/String;

.field public static final VIDEO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    sput-object v0, Lcom/android/gallery3d/util/BucketNames;->PHOTO:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    sput-object v0, Lcom/android/gallery3d/util/BucketNames;->VIDEO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
