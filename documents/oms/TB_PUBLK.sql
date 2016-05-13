/*
================================================================================
��ṹ����:TB_PUBLK
��ṹ����:��ƿ�Ŀ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLK;
drop index AK_TB_PUBLK;
drop table TB_PUBLK;
create table TB_PUBLK  (
   PUBLK_ID             INTEGER                         not null,  /*��ƿ�ĿID           */
   PUBLK001             INTEGER                         not null,  /*��ƿ�Ŀ����ID               */
   PUBLK002             VARCHAR2(30)                    not null,  /*��Ŀ����             */
   PUBLK003             VARCHAR2(40)                    not null,  /*��Ŀ����             */
   PUBLK004             VARCHAR2(40),                              /*��ĿӢ��             */
   PUBLK005             INTEGER                         not null,  /*��Ŀ����ID           */
   PUBLK006             VARCHAR2(2)                     not null,  /*����             */
   PUBLK007             VARCHAR2(2)                     not null,  /*�ֽ����             */
   PUBLK008             INTEGER                         not null,  /*Ĭ�ϱ���ID           */
   PUBLK009             NUMBER(2)                       not null,  /*��Ŀ�㼶             */
   PUBLK010             VARCHAR2(1),                               /*�Ƿ�ĩ��             */
   PUBLK011             VARCHAR2(1),                               /*�Ƿ�ͣ��             */
   PUBLK012             VARCHAR2(1),                               /*���                 */
   PUBLK013             VARCHAR2(4)                       not null,  /*��Ч���             */
   PUBLK014             VARCHAR2(2),                                  /*ͣ�����             */
   PUBLK016             VARCHAR2(2)                      not null,  /*��Ч�ڼ�             */
   PUBLK015             VARCHAR2(4),                                 /*ͣ���ڼ�             */
   PUBLK017             VARCHAR2(4),                                 /*�������             */
   PUBLK018             VARCHAR2(2),                                 /*�����ڼ�             */
   PUBLK019             VARCHAR2(1),                               /*����������       */
   PUBLK020             VARCHAR2(1),                               /*�������         */
   PUBLK021             VARCHAR2(1),                               /*�˱����˫����ʾ     */
   PUBLK022             VARCHAR2(1),                               /*��������             */
   PUBLK023             INTEGER,                                   /*���㵥λID           */
   PUBLK024             VARCHAR2(1),                               /*�Ƿ������Ŀ         */
   PUBLK025             INTEGER,                                   /*������˾ID           */
   PUBLK026             INTEGER,                                   /*������������ID       */
   PUBLK027             VARCHAR2(40),                              /*��ID                 */ 
   PUBLK028             VARCHAR2(40),                              /*��ID                 */
   PUBLK029             VARCHAR2(255),                             /*��ʾ����            */
   PUBLK030             VARCHAR2(15),                              /*������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLK primary key (PUBLK_ID)
);
create unique index AK_TB_PUBLK on TB_PUBLK (PUBLK001,PUBLK002);
create sequence SEQ_TB_PUBLK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLK to public;
grant index  on TB_PUBLK to public;
grant update on TB_PUBLK to public; 
grant delete on TB_PUBLK to public;  
grant insert on TB_PUBLK to public; 
grant select on SEQ_TB_PUBLK to public;   