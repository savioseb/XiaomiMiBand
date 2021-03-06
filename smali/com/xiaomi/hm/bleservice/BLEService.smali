.class public final Lcom/xiaomi/hm/bleservice/BLEService;
.super Landroid/app/Service;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String;

.field public static final INTENT_ACTION_BATTERY_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_CONN_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_CONNECTED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_CONNECTION_FAILED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_CONNECTION_RESET:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_DISCONNECTED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_FOUND:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_SYNC_DATA_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_SYNC_DYNAMIC_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_WEIGHT_CONN_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_EXTRA_DEVICE:Ljava/lang/String;

.field public static final INTENT_EXTRA_PARAM:Ljava/lang/String;

.field public static final INTENT_EXTRA_PARAM_EXT:Ljava/lang/String;

.field private static final INTENT_PREFIX:Ljava/lang/String;

.field public static final MAC_ADDRESS_FILTER:Ljava/lang/String; = "88:0F:10"

.field public static final MESSAGE_CHECK_SYNC_DATA:I = 0x11

.field public static final MESSAGE_DEVICE_BT_OFF:I = 0xa

.field public static final MESSAGE_DEVICE_BT_ON:I = 0x8

.field public static final MESSAGE_DEVICE_BT_TURNING_OFF:I = 0xb

.field public static final MESSAGE_DEVICE_BT_TURNING_ON:I = 0x9

.field public static final MESSAGE_DEVICE_CONNECTION_RESET:I = 0x3

.field public static final MESSAGE_DISCONNECT_WEIGHT:I = 0x14

.field public static final MESSAGE_SCREEN_OFF:I = 0xf

.field public static final MESSAGE_SET_MAX_LATENCY:I = 0xe

.field public static final MESSAGE_START_SYNC_DATA:I = 0xc

.field public static final MESSAGE_SYNC_DATA_TO_SERVER:I = 0x12

.field public static final MESSAGE_SYNC_WEIGHT_DATA:I = 0x13

.field public static final MESSAGE_USER_PRESENT:I = 0x10

.field private static final NOTIFY_VIBRATE_ID:I = 0x27

.field private static final NO_DATA_SYNC_COUNT:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final SCAN_TIMEOUT:I = 0x7530

.field private static final SYNC_BLOCK_COUNT:I = 0xc

.field private static final SYNC_SERVER_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "1.9.6.20140519"


# instance fields
.field private isSyncDataRunning:Z

.field private final mBlueToothSyncObj:Ljava/lang/Object;

.field private mConfig:Lcn/com/smartdevices/bracelet/config/b;

.field private mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

.field private volatile mIsDisableBluetooth:Z

.field private mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

.field private mNoDataSyncCount:I

.field private final mNotificationId:I

.field private mSyncBlockCount:I

.field private mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

.field private final mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

.field private final mSyncServerCount:I

.field private final mWeightNotificationId:I

.field private mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

.field private final mWeightSyncObj:Ljava/lang/Object;

.field private final m_Binder:Landroid/os/Binder;

.field private final m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final m_Handler:Landroid/os/Handler;

.field private final m_HandlerThread:Landroid/os/HandlerThread;

.field private m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private m_StopScanRunnable:Ljava/lang/Runnable;

.field private final miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

.field private miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".VERSION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.9.6.20140519"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;)V

    const-class v0, Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->PACKAGE_NAME:Ljava/lang/String;

    const-class v0, Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->HANDLER_THREAD_NAME:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_DEVICE_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_FOUND:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_DEVICE_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_CONNECTED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_DISCONNECTED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_DEVICE_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_CONNECTION_FAILED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_DEVICE_CONNECTION_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_CONNECTION_RESET:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_CONN_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_WEIGHT_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_WEIGHT_CONN_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_SYNC_DATA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DATA_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_DYNAMIC_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DYNAMIC_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_DEVICE_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_ACTION_BATTERY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_BATTERY_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_EXTRA_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_DEVICE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_EXTRA_PARAM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INTENT_EXTRA_PARAM_EXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iput-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/xiaomi/hm/bleservice/u;

    invoke-direct {v0, p0}, Lcom/xiaomi/hm/bleservice/u;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Binder:Landroid/os/Binder;

    iput v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNotificationId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightNotificationId:I

    iput v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    iput-boolean v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    iput-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    iput v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncServerCount:I

    iput-boolean v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightSyncObj:Ljava/lang/Object;

    invoke-static {}, Lcn/com/smartdevices/bracelet/config/b;->f()Lcn/com/smartdevices/bracelet/config/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConfig:Lcn/com/smartdevices/bracelet/config/b;

    new-instance v0, Lcom/xiaomi/hm/bleservice/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/hm/bleservice/b;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

    new-instance v0, Lcom/xiaomi/hm/bleservice/t;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/hm/bleservice/t;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;I)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->HANDLER_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/xiaomi/hm/bleservice/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/hm/bleservice/k;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/xiaomi/hm/bleservice/l;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/hm/bleservice/l;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->onDeviceInitializationSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->onDeviceStatusChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/hm/bleservice/BLEService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->stopScan(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/hm/bleservice/BLEService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->getConnectedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaomi/hm/bleservice/BLEService;Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->onTogglePairResult(Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/xiaomi/hm/bleservice/BLEService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/xiaomi/hm/bleservice/BLEService;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaomi/hm/bleservice/BLEService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/hm/bleservice/BLEService;->notifySyncDataStatusChanged(IIZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncToServerNew()V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncToQQHealth()V

    return-void
.end method

.method static synthetic access$1810(Lcom/xiaomi/hm/bleservice/BLEService;)I
    .locals 2

    iget v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/xiaomi/hm/bleservice/BLEService;)Lcom/xiaomi/hm/bleservice/t;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/hm/bleservice/BLEService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->onDeviceBatteryStatusChanged(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->handleSyncDataToServerFailed(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/hm/bleservice/BLEService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/hm/bleservice/BLEService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/hm/bleservice/BLEService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/hm/bleservice/BLEService;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyWeightStatusChanged(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->onWeightLowBattery()V

    return-void
.end method

.method private cancelBatteryLowNotification()V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private checkFwVersion()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Mili.fw"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getVersionCodeFromFwStream(Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getCachedDeviceInfo()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFwVersion exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new fw version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",fw version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->firmwareVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",pcb version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->hardwareVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->firmwareVersion:I

    if-gt v2, v1, :cond_1

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v2, "bracelet firmware is the lastest,do nothing!"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dumpState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[CONNECTED]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[CONNECTING]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[DISCONNECTED]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[DISCONNECTING]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getConnectedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 5

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conneted device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/Thread;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, ">>> UNEXPECTED <<<"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->f(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->startSyncData()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->checkSyncData()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncWeightData()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->disconnectWeight()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncToServerNew()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->disconnectMili()V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->enableBluetooth()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->initBluetoothState()V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->connectDevice()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleSyncDataToServerFailed(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

    invoke-virtual {v0, p1}, Lcom/xiaomi/hm/bleservice/t;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

    invoke-virtual {v0, p1}, Lcom/xiaomi/hm/bleservice/t;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try sync data to server type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

    invoke-virtual {v2, p1}, Lcom/xiaomi/hm/bleservice/t;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/hm/bleservice/t;->a(II)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop try sync data to server type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/t;

    invoke-virtual {v2, p1}, Lcom/xiaomi/hm/bleservice/t;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initBluetoothState()V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyBatteryStatusChanged(II)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBatteryStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_BATTERY_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/hm/bleservice/HwBatteryStatus;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/hm/bleservice/HwBatteryStatus;-><init>(II)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyBraceletVibrated(I)Z
    .locals 7

    const/4 v3, 0x1

    const/high16 v5, 0x10000000

    const/4 v2, 0x0

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyBraceletVibrated:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/com/smartdevices/bracelet/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "ACTION_OPEN_SETTINGS_PAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v4, 0x7f08020c

    invoke-virtual {p0, v4}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/support/v4/app/al;

    invoke-direct {v5, p0}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020005

    invoke-virtual {v5, v6}, Landroid/support/v4/app/al;->a(I)Landroid/support/v4/app/al;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/al;->d(Z)Landroid/support/v4/app/al;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;

    const/16 v1, 0x27

    invoke-virtual {v2}, Landroid/support/v4/app/al;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move v0, v3

    goto :goto_0

    :pswitch_2
    const v1, 0x7f08020e

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    const v1, 0x7f08020f

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :pswitch_4
    const v0, 0x7f080210

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "ACTION_OPEN_ALARM_PAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :pswitch_5
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "ACTION_OPEN_ALARM_PAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :pswitch_6
    const v1, 0x7f080212

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_7
    const v1, 0x7f080213

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_8
    const v1, 0x7f080214

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_9
    const v1, 0x7f080215

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_a
    const v1, 0x7f080216

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_b
    move v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private notifyConnStatusChanged(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0, p1}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_CONN_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyDeviceStatusChanged(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDeviceStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static notifyDynamicStatusChanged(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "notifyDynamicStatusChanged"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DYNAMIC_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifySyncDataStatusChanged(IIZ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySyncDataStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;-><init>(IIZ)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DATA_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyWeightStatusChanged(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWeightStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_WEIGHT_CONN_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onBatteryLowNotification(I)V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBatteryLowNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->C()I

    move-result v0

    invoke-static {p1}, Lcom/xiaomi/hm/bleservice/HwBatteryStatus;->a(I)I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Lcn/com/smartdevices/bracelet/z;->a(I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    if-nez v3, :cond_2

    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    new-instance v3, Landroid/support/v4/app/al;

    invoke-direct {v3, p0}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/support/v4/app/al;->a(I)Landroid/support/v4/app/al;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/al;->d(Z)Landroid/support/v4/app/al;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->a([J)Landroid/support/v4/app/al;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ACTION_OPEN_SETTINGS_PAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;

    invoke-virtual {v1}, Landroid/support/v4/app/al;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    if-eq v3, v5, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_3
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :array_0
    .array-data 8
        0x64
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method private onDeviceBatteryStatusChanged(II)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceBatteryStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceBatteryStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->onBatteryLowNotification(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyBatteryStatusChanged(II)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->cancelBatteryLowNotification()V

    goto :goto_0
.end method

.method private onDeviceInitializationSuccess()V
    .locals 3

    new-instance v0, Lcn/com/smartdevices/bracelet/a/y;

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->H()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/hm/bleservice/g;

    invoke-direct {v2, p0}, Lcom/xiaomi/hm/bleservice/g;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-direct {v0, v1, v2}, Lcn/com/smartdevices/bracelet/a/y;-><init>(Lcn/com/smartdevices/bracelet/model/PersonInfo;Lcn/com/smartdevices/bracelet/a/b;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/a/y;->c()V

    return-void
.end method

.method private onDeviceStatusChanged(I)V
    .locals 4

    const/16 v3, 0x27

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->H()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->miliConfig:Lcn/com/smartdevices/bracelet/model/MiliConfig;

    iget-boolean v0, v0, Lcn/com/smartdevices/bracelet/model/MiliConfig;->vibrate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyBraceletVibrated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyDeviceStatusChanged(I)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/e;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/e;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/y;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/y;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/y;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/a/y;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/Thread;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#Broadcast# Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "#Broadcast# USER_PRESENT "

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->isApplicationBroughtToBackground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/com/smartdevices/bracelet/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ">>> UNEXPECTED <<<"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "#Broadcast# Bluetooth ON."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "#Broadcast# Bluetooth OFF."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "#Broadcast# Bluetooth turning ON."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "#Broadcast# Bluetooth turning OFF."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#Broadcast# state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", prev state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#Broadcast# device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#Broadcast# device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#Broadcast# device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#Broadcast# bond state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", prev bond state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#Broadcast# device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", btClass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#Broadcast# device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onTogglePairResult(Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;)V
    .locals 5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setAutoReconnect(Z)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p0, p0}, Lcom/xiaomi/hm/bleservice/BLEService;->isApplicationBroughtToBackground(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnterInBackground:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnterInBackground:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->checkSyncData()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "onTogglePairResult return null!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWeightLowBattery()V
    .locals 5

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f0802aa

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0802ab

    invoke-virtual {p0, v2}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/al;

    invoke-direct {v3, p0}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/support/v4/app/al;->a(I)Landroid/support/v4/app/al;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->d(Z)Landroid/support/v4/app/al;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->a([J)Landroid/support/v4/app/al;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ACTION_OPEN_WEIGHT_SETTINGS_PAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/support/v4/app/al;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_0
    .array-data 8
        0x64
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method private stopScan(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    :cond_2
    return-void
.end method

.method private syncDataNeededToSyncToSever(Landroid/content/Context;Lcn/com/smartdevices/bracelet/w;)V
    .locals 6

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/E;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "No connected network!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->aa()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "return as sync to server less than 5 minutes!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/com/smartdevices/bracelet/s;->a()Lcn/com/smartdevices/bracelet/s;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/com/smartdevices/bracelet/s;->a(Lcn/com/smartdevices/bracelet/w;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/UploadData;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/UploadData;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/com/smartdevices/bracelet/g/a;->f(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/model/LoginData;

    move-result-object v0

    invoke-static {p1}, Lcn/com/smartdevices/bracelet/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/xiaomi/hm/bleservice/j;

    invoke-direct {v5, p0, p2, v1, v2}, Lcom/xiaomi/hm/bleservice/j;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Lcn/com/smartdevices/bracelet/w;Lcn/com/smartdevices/bracelet/s;Ljava/util/ArrayList;)V

    invoke-static {v0, v4, p2, v3, v5}, Lcn/com/smartdevices/bracelet/k/g;->a(Lcn/com/smartdevices/bracelet/model/LoginData;Ljava/lang/String;Lcn/com/smartdevices/bracelet/w;Ljava/lang/String;Lcom/d/a/a/h;)V

    goto :goto_0
.end method

.method private syncToQQHealth()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConfig:Lcn/com/smartdevices/bracelet/config/b;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/config/b;->c:Lcn/com/smartdevices/bracelet/config/k;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/config/k;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "Sync Data To QQ Health!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->syncDataAsync()V

    :cond_0
    return-void
.end method

.method private syncToServerNew()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/w;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/w;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->syncDataNeededToSyncToSever(Landroid/content/Context;Lcn/com/smartdevices/bracelet/w;)V

    return-void
.end method

.method private syncWeightData()V
    .locals 5

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "in syncWeightData"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    new-instance v2, Lcom/xiaomi/hm/bleservice/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/hm/bleservice/c;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->H()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v3

    iget-wide v3, v3, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->runSyncDataTask(Lcom/xiaomi/hm/bleservice/profile/ISyncDataCb;J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "out syncWeightData"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkSyncData()V
    .locals 6

    const/16 v5, 0xc

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last sync time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->Z()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last sync time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->Z()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->checkFwVersion()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->Z()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public declared-synchronized connectDevice()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "in connectDevice"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->l()Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miliProfile != null, miliProfile.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v3}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getState()Lcom/xiaomi/hm/bleservice/gatt/IGattCallback$STATE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->dumpState(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miliProfile has device:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    :cond_2
    iget-object v0, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getConnectedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->doConnect(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mili device type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->doConnect(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x7530

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->startScan(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public connectWeight(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "in connectWeight"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v2, "disconnect current weight profile!!!"

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->clean()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    :cond_0
    new-instance v0, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    new-instance v2, Lcom/xiaomi/hm/bleservice/p;

    invoke-direct {v2, p0}, Lcom/xiaomi/hm/bleservice/p;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-direct {v0, p0, p1, v2}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/xiaomi/hm/bleservice/gatt/IGattCallback$IConnectionStateChangeCallback;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    new-instance v2, Lcom/xiaomi/hm/bleservice/q;

    invoke-direct {v2, p0}, Lcom/xiaomi/hm/bleservice/q;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->addInitCallback(Lcom/xiaomi/hm/bleservice/gatt/IGattCallback$IInitializationCallback;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    new-instance v2, Lcom/xiaomi/hm/bleservice/r;

    invoke-direct {v2, p0}, Lcom/xiaomi/hm/bleservice/r;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->addMeasurementChangedCallback(Lcom/xiaomi/hm/bleservice/profile/IWeightProfile$IMeasurementChangedCallback;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    new-instance v2, Lcom/xiaomi/hm/bleservice/s;

    invoke-direct {v2, p0}, Lcom/xiaomi/hm/bleservice/s;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->addLowBatteryCallback(Lcom/xiaomi/hm/bleservice/profile/IWeightProfile$ILowBatteryCallback;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-virtual {v0, p2}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->connect()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "out connectWeight"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v2, "use current weight profile!!!"

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disableBluetooth()V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized disconnectMili()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "in disconnectDevice"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->stopScan(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    :cond_0
    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnectWeight()V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "in disconnectWeight"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/WeightProfile;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "out disconnectWeight"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doConnect(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    new-instance v0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    new-instance v1, Lcom/xiaomi/hm/bleservice/o;

    invoke-direct {v1, p0}, Lcom/xiaomi/hm/bleservice/o;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/xiaomi/hm/bleservice/gatt/IGattCallback$IConnectionStateChangeCallback;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->addMiliCallback(Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0, p2}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->connect()V

    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnStatus()Lcom/xiaomi/hm/bleservice/HwConnStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    return-object v0
.end method

.method public getLastConnStatus()Lcom/xiaomi/hm/bleservice/HwConnStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    return-object v0
.end method

.method public getMiliProfile()Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    return-object v0
.end method

.method public getSyncDataStatus()Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    return-object v0
.end method

.method public getWeigthProfile()Lcom/xiaomi/hm/bleservice/profile/WeightProfile;
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in getWeigthProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mWeightProfile:Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicationBroughtToBackground(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    sget-object v3, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topActivity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topActivity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isBluetoothRestarting()Z
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/xiaomi/hm/bleservice/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/hm/bleservice/m;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->disconnectMili()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    const-string v0, ">>> UNEXPECTED <<<"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->f(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->connectDevice()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    const-string v0, "Calling onDestroy()..."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/x;->f(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setLatency(I)V
    .locals 4

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current latency level set level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "setLatency"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waklock acquire......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v1, Lcn/com/smartdevices/bracelet/a/p;

    new-instance v2, Lcom/xiaomi/hm/bleservice/f;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/hm/bleservice/f;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;ILandroid/os/PowerManager$WakeLock;)V

    invoke-direct {v1, p1, v2}, Lcn/com/smartdevices/bracelet/a/p;-><init>(ILcn/com/smartdevices/bracelet/a/b;)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/a/p;->e()V

    return-void
.end method

.method public startAnalysisThreadForLuaEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/hm/bleservice/i;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/hm/bleservice/i;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startScan(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/x;->d()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/hm/bleservice/d;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/hm/bleservice/d;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xxx"

    const-string v1, "startLeScan return false, now disable bluetooth!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->disableBluetooth()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/hm/bleservice/e;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/hm/bleservice/e;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startSyncData()V
    .locals 4

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSyncData isSyncDataRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    new-instance v0, Lcn/com/smartdevices/bracelet/a/v;

    invoke-static {}, Lcn/com/smartdevices/bracelet/z;->X()J

    move-result-wide v1

    new-instance v3, Lcom/xiaomi/hm/bleservice/h;

    invoke-direct {v3, p0}, Lcom/xiaomi/hm/bleservice/h;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/com/smartdevices/bracelet/a/v;-><init>(JLcn/com/smartdevices/bracelet/a/b;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/a/v;->c()V

    goto :goto_0
.end method

.method public startWeightSyncData()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
