/*
================================================================================
��ṹ����:TB_PUBFH
��ṹ����:��Ʒ�����ҳǩ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFH;
drop index AK_TB_PUBFH;
drop table TB_PUBFH;
create table TB_PUBFH  (
   PUBFH_ID             INTEGER                          NOT NULL,  /*��Ʒ���ID                        */
   PUBFH001             INTEGER                          NOT NULL,  /*����ID                            */
   PUBFH002             VARCHAR2(50)                     NOT NULL,  /*��Ʒ�������                      */
   PUBFH003             INTEGER                          NOT NULL,  /*ҳǩ                              */
   PUBFH004             VARCHAR2(255),                              /*ֽ������                          */
   PUBFH005             INTEGER,                                    /*ֽ������                          */
   PUBFH006             INTEGER,                                    /*ֽ�ŷ��� '0'���� '1'����          */
   PUBFH007             NUMBER(10,2),                               /*ֽ�ſ��                          */
   PUBFH008             NUMBER(10,2),                               /*ֽ�Ÿ߶�                          */
   PUBFH009             INTEGER,                                    /*�Ƿ��״� 0�� 1��                  */
   PUBFH010             INTEGER,                                    /*�Ƿ�����˳�                      */
   PUBFH011             INTEGER,                                    /*�Ƿ�Ĭ�ϴ�ӡ����                  */
   PUBFH012             INTEGER,                                    /*���ʱ�ο���ӡ�������ҳ��ʱ�õ���*/
   PUBFH013             VARCHAR2(10),                               /*����ͼ����                        */
   PUBFH014             INTEGER,                                    /*��ͼ��ʾ��ʽ                      */
   PUBFH015             INTEGER,                                    /*�Ƿ��ӡ                          */
   PUBFH016             INTEGER,                                    /*���״�ʱ�Ƿ��ӡ                  */
   PUBFH017             INTEGER,                                    /*�״�ʱ�Ƿ��ӡ                    */
   PUBFH018             NUMBER(10,2),                               /*��ͼ����߾���                    */
   PUBFH019             NUMBER(10,2),                               /*��ͼ�ඥ������                    */
   PUBFH020             NUMBER(10,2),                               /*��ͼ���                          */
   PUBFH021             NUMBER(10,2),                               /*��ͼ�߶�                          */
   PUBFH022             NUMBER(10,2),                               /*�Զ����ͼ���                    */
   PUBFH023             NUMBER(10,2),                               /*�Զ����ͼ�߶�                    */
   PUBFH024             INTEGER,                                    /*��ͼ��ŷ�ʽ 0������ݿ� 1���Ŀ¼*/
   PUBFH025             VARCHAR2(255),                              /*��ͼ·��                          */
   CREATE_USER          VARCHAR2(12),                               /*������Ա          */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����      */                               
   CREATE_DATE          DATE,                                       /*��������          */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա          */
   MODI_DATE            DATE,                                       /*�޸�����          */
   FLAG                 NUMBER(1),                                  /*����״̬          */
   constraint PK_TB_PUBFH primary key (PUBFH_ID)
);
create unique index AK_TB_PUBFH on TB_PUBFH (PUBFH001,PUBFH002,PUBFH003);
create sequence SEQ_TB_PUBFH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFH to public;
grant index  on TB_PUBFH to public;
grant update on TB_PUBFH to public; 
grant delete on TB_PUBFH to public;  
grant insert on TB_PUBFH to public; 
grant select on SEQ_TB_PUBFH to public;   