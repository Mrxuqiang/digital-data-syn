/*
================================================================================
��ṹ����:TB_CONDA
��ṹ����:��ͬ��ֹ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONDA;
drop index AK_TB_CONDA;
drop table TB_CONDA;
create table TB_CONDA  (
   CONDA_ID             INTEGER                         not null,  /*��ͬ��ֹID          */
   CONDA001             INTEGER                         not null,  /*��˾ID              */
   CONDA002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONDA003             INTEGER                         not null,  /*��ͬID              */
   CONDA004             NUMBER(6,1)                     not null,  /*�汾��              */
   CONDA005             DATE                            not null,  /*ǩ������            */
   CONDA006             VARCHAR2(30)                    not null,  /*�Է�ǩԼ��          */
   CONDA007             INTEGER                         not null,  /*��ͬ����ID          */
   CONDA008             INTEGER                         not null,  /*��Ӫ�̻�ID          */
   CONDA009             INTEGER                         not null,  /*�����̻�ID          */
   CONDA010             INTEGER                         not null,  /*̯λID              */
   CONDA011             DATE                            not null,  /*��������            */   #modify ouwx 2010/2/26
   CONDA012             DATE                            not null,  /*����ֹ��            */
   CONDA013             INTEGER                         not null,  /*���ʽID          */
   CONDA014             VARCHAR2(16),                              /*չ�ʵ�ID            */
   CONDA015             NUMBER(5),                                 /*��ǰ�տ�����        */
   CONDA016             VARCHAR2(1),                               /*�Ƿ������          */
   CONDA017             VARCHAR2(1),                               /*POSʹ�÷�ʽ         */
   CONDA018             INTEGER,                                   /*���ʽID          */
   CONDA019             NUMBER(5),                                 /*��������(��)        */
   CONDA020             NUMBER(12,2),                              /*���ɽ���            */
   CONDA021             INTEGER,                                   /*��ǩ������ͬID      */
   CONDA022             INTEGER,                                   /*ҵ����ԱID          */
   CONDA023             VARCHAR2(255),                             /*��ע                */
   CONDA024             DATE,                                      /*��ֹ����            */
   CONDA025             VARCHAR2(1)                     not null,  /*״̬                */
   CONDA026             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONDA027             VARCHAR2(30),                              /*ǩ�˵���            */
   CONDA028             VARCHAR2(1),                               /*ǩ����              */
   CONDA029             INTEGER,                                   /*¼����ID            */
   CONDA030             DATE,                                      /*¼������            */
   CONDA031             INTEGER,                                   /*�����ID            */
   CONDA032             DATE,                                      /*�������            */
   CONDA033             VARCHAR2(80),                              /*�̻�ȫ��            */
   CONDA034             VARCHAR2(30),                              /*������              */
   CONDA035             VARCHAR2(30),                              /*�����˵绰          */
   CONDA036             VARCHAR2(30),                              /*����                */
   CONDA037             VARCHAR2(20),                              /*��˰�˵ǼǺ�        */
   CONDA038             INTEGER                         not null,  /*��Ӫ����ID          */
   CONDA039             INTEGER                         not null,  /*��Ӫ����ID          */
   CONDA040             INTEGER                         not null,  /*��ӪС��ID          */
   CONDA041             INTEGER                         not null,  /*��Ʒ��ID            */
   CONDA042             INTEGER                         not null,  /*��ֹ��ID            */
   CONDA043             INTEGER                         not null,  /*��ֹԭ��ID          */
   CONDA044             VARCHAR2(80),                              /*�ĵ����            */
   CONDA045             VARCHAR2(1)                     not null,  /*̯λ����            */
   CONDA046             INTEGER                         not null,  /*ҵ����ID          */
   CONDA047             INTEGER                         not null,  /*¥��ID              */
   CONDA048             INTEGER                         not null,  /*¥��ID              */
   CONDA049             VARCHAR2(30)                    not null,  /*��ͬ��              */
   CONDA050             DATE                            not null,  /*��������            */   #modify ouwx 2010/2/26
   CONDA051             DATE                            not null,  /*�������            */   #modify ouwx 2010/2/26
   CONDA052             NUMBER(5),                                 /*�Զ�����(��)        */   add ouwx 2010/12/05
   CONDA053             NUMBER(5),                                 /*��ǰ��������        */   add ouwx 2010/12/05
   CONDA054             DATE,					   /*�������ִ����      */   add ouwx 2010/12/05
   CONDA055             VARCHAR2(400),                             /*װ�޲��ϴ���        */   add ouwx 2011/12/21
   CONDA056             VARCHAR2(800),                             /*����˵��            */   add ouwx 2011/12/21
   CONDA057             DATE,                                      /*�Ʒѽ�ֹ����        */   add ouwx 2011/12/21 
   CONDA058             INTEGER,                                   /*��ͬ�ȼ�ID          */  add ouwx 2012/02/14   
   CONDA059             VARCHAR2(40),                              /*��Ӫ���̼��        */  add ouwx 2012/04/09   
   CONDA060             VARCHAR2(40),                              /*������̼��        */  add ouwx 2012/04/09    
   CONDA061             INTEGER                         not null,  /*Ʒ��ID              */
   CONDA062             DATE                            not null,  /*��ֹʱ��            */
   CONDA063             NUMBER(22,2),                              /*��ͬ����            */ 
   CONDA064             VARCHAR2(30),                              /*��˾����            */
   CONDA065             VARCHAR2(60),                             /*���ⷽע���ַ����סַ��            */
   CONDA066             VARCHAR2(30),                             /*���ⷽ���������ˣ������ˣ�            */
   CONDA067             VARCHAR2(30),                             /*���ⷽ���֤���루��֯��������֤��            */
   CONDA068             VARCHAR2(30),                             /*���ⷽ���������ˣ������ˣ�-��ϵ��ʽ            */
   CONDA069             VARCHAR2(30),                             /*���ⷽ��ϵ����            */
   CONDA070             VARCHAR2(60),                             /*���ⷽ��ϵ��ַ            */
   CONDA071             VARCHAR2(30),                             /*���ⷽ��ϵ�绰            */
   CONDA072             VARCHAR2(60),                             /*������ע���ַ����סַ��            */
   CONDA073             VARCHAR2(30),                             /*���������������ˣ������ˣ�            */
   CONDA074             VARCHAR2(30),                             /*���������֤���루��֯��������֤��            */
   CONDA075             VARCHAR2(30),                             /*���������������ˣ������ˣ�-��ϵ��ʽ            */
   CONDA076             VARCHAR2(30),                             /*���ⷽ��Ȩ����ί�д�ǩ�ˣ�            */
   CONDA077             VARCHAR2(30),                             /*���ⷽ��Ȩ����ί�д�ǩ�ˣ����֤            */
   CONDA078             VARCHAR2(30),                  not null,  /*��ҵ����             */
   CONDA079             VARCHAR2(13),                             /*SAP��ͬ��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONDA primary key (CONDA_ID)
);
create unique index AK_TB_CONDA on TB_CONDA (CONDA002,CONDA003);
create sequence SEQ_TB_CONDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDA to public;
grant index  on TB_CONDA to public;
grant update on TB_CONDA to public; 
grant delete on TB_CONDA to public;  
grant insert on TB_CONDA to public; 
grant select on SEQ_TB_CONDA to public;   