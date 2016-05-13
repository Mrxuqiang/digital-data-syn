/*
================================================================================
��ṹ����:TB_ASSAA
��ṹ����:�̶��ʲ���Ƭ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_ASSAA;
drop index AK_TB_ASSAA;
drop table TB_ASSAA;
create table TB_ASSAA  (
   ASSAA_ID             INTEGER                         not null,   /*��ƬID               */
   ASSAA001             VARCHAR2(10)                    not null,  /*��Ƭ���             */
   ASSAA002             VARCHAR2(30)                    not null,  /*�ʲ�����             */
   ASSAA003             VARCHAR2(60)                    not null,  /*�ʲ�����             */
   ASSAA004             VARCHAR2(100),                             /*����ͺ�             */
   ASSAA005             INTEGER,                                   /*������ID             */
   ASSAA006             VARCHAR2(100),                             /*��ŵص�             */
   ASSAA007             INTEGER                                 ,  /*ʹ��״��ID             */
   ASSAA008             INTEGER                                 ,  /*���ӷ�ʽID             */
   ASSAA009             VARCHAR2(1)                     not null,  /*�۾ɷ���             */
   ASSAA010             INTEGER                                 ,  /*ʹ����ID               */
   ASSAA011             NUMBER(4),                                 /*����                 */
   ASSAA012             NUMBER(16,2),                              /*��λ�۾�             */
   ASSAA013             INTEGER                         not null,  /*������ID             */
   ASSAA014             VARCHAR2(1)                    not null,  /*�۾ɳе�����          */
   ASSAA015             DATE                           not null,  /*��ʼʹ������          */
   ASSAA016             NUMBER(4),                                /*ʹ����                */
   ASSAA017             NUMBER(2),                                 /*ʹ���·�              */
   ASSAA018             NUMBER(2),                                 /*�Ѽ����·�            */
   ASSAA019             NUMBER(18,3),                                 /*��������              */
   ASSAA020             NUMBER(10),                                /*�ۼƹ�����            */
   ASSAA021             VARCHAR2(4),                                /*��������λ            */
   ASSAA022             NUMBER(5,4),                               /*���۾���              */
   ASSAA023             NUMBER(16,2),                              /*���۾ɶ�              */
   ASSAA024             INTEGER,                                   /*����ID                  */
   ASSAA025             NUMBER(5,4),                              /*����                  */
   ASSAA026             NUMBER(16,2),                               /*ԭ��ԭֵ              */
   ASSAA027             NUMBER(16,2),                              /*����ԭֵ              */
   ASSAA028             NUMBER(16,2),                              /*�ۼ��۾�              */
   ASSAA029             NUMBER(16,2),                              /*����                  */
   ASSAA030             NUMBER(16,2),                              /*��ֵ׼��              */
   ASSAA031             NUMBER(16,2),                              /*��ֵ                  */
   ASSAA032             NUMBER(5,4),                              /*����ֵ��              */
   ASSAA033             NUMBER(16,2),                               /*����ֵ                */
   ASSAA034             VARCHAR2(1),                              /*�Ƿ�����              */    
   ASSAA035             DATE                            not null,  /*��Ƭ����              */
   ASSAA036             NUMBER(16,2),                              /*���۾ɶ�              */
   ASSAA037             VARCHAR2(1),,                              /*����ƾ֤              */
   ASSAA038             INTEGER,                                   /*��ʼ������              */
   CREATE_USER          VARCHAR2(12),                               /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_ASSAA primary key (ASSAA_ID)
);
create unique index AK_TB_ASSAA on TB_ASSAA (ASSAA001);
create sequence SEQ_TB_ASSAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAA to public;
grant index  on TB_ASSAA to public;
grant update on TB_ASSAA to public; 
grant delete on TB_ASSAA to public;  
grant insert on TB_ASSAA to public; 
grant select on SEQ_TB_ASSAA to public;   