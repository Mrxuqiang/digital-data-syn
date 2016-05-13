/*
================================================================================
��ṹ����:TB_PUBJI
��ṹ����:����������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBJI;
drop index AK_TB_PUBJI;
drop table TB_PUBJI;
create table TB_PUBJI  (
   PUBJI_ID             INTEGER                         not null,  /*����������ϸID         */
   PUBJI001             INTEGER                         not null,  /*����ID             */
   PUBJI002             VARCHAR2(10),                              /*��Ч��             */
   PUBJI003             VARCHAR2(10) ,                             /*���             */
   PUBJI004             VARCHAR2(255),                             /*ͼƬ·��             */
   PUBJI005             VARCHAR2(1),                               /*״̬         */ 
   PUBJI006             VARCHAR2(1),                               /*�������� 1��Ӫҵִ��		2��˰��Ǽ�֤	 3����Ȩ��	4�����֤	5���ʼ챨��	6����Ʒ˵����	7����Ʒ�ϸ�֤8��3C	9�����ص�	10��������ʾ��	11������֤��	12����֯��������֤      13.���� */
   PUBJI007             VARCHAR2(10),                              /*��������         */ 
   PUBJI008             VARCHAR2(10),                              /*��������         */ 
   PUBJI009             INTEGER,                                    /*¼����           */
   PUBJI010             DATE,                                       /*¼������         */
   PUBJI011             INTEGER,                                    /*�޸���           */
   PUBJI012             DATE,                                       /*�޸�����        */
   PUBJI013             INTEGER,                                    /*�����           */
   PUBJI014             DATE,                                       /*�������         */
   PUBJI015             VARCHAR2(2),                               /*����֤������         */
   PUBJI016             VARCHAR2(255),                             /*������ע        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBJI primary key (PUBJI_ID)
);
create unique index AK_TB_PUBJI on TB_PUBJI (PUBJI001,PUBJI002);
create sequence SEQ_TB_PUBJI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJI to public;
grant index  on TB_PUBJI to public;
grant update on TB_PUBJI to public; 
grant delete on TB_PUBJI to public;  
grant insert on TB_PUBJI to public; 
grant select on SEQ_TB_PUBJI to public;   