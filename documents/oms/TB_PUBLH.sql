/*
================================================================================
��ṹ����:TB_PUBLH
��ṹ����:�������������ױ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLH;
drop index AK_TB_PUBLH;
drop table TB_PUBLH;
create table TB_PUBLH  (
   PUBLH_ID             INTEGER                         not null,  /*��������������ID         */
   PUBLH001             INTEGER                         not null,  /*�������ID                 */
   PUBLH002             VARCHAR2(16)                    not null,  /*�������״���               */
   PUBLH003             VARCHAR2(30)                    not null,  /*������������               */
   PUBLH004             INTEGER                         not null,  /*��������ID                 */
   PUBLH005             VARCHAR2(2)                     not null,  /*��������                   */
   PUBLH006             VARCHAR2(1),                               /*�Ƿ�����                   */
   PUBLH007             NUMBER(4),                                 /*�������                   */
   PUBLH008             NUMBER(2),                                 /*�����ڼ�                   */
   PUBLH009             VARCHAR2(1),                               /*�Ƿ�ͣ��                   */
   PUBLH010             VARCHAR2(1),                               /*�Ƿ���                   */
   PUBLH011             NUMBER(4),                                 /*�������                   */
   PUBLH012             NUMBER(2),                                 /*�����ڼ�                 */    
   PUBLH013             INTEGER,                                   /*Ĭ��ƾ֤���                 */    
   PUBLH014             INTEGER,                                   /*�����ת��Ŀ               */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����               */                               
   CREATE_DATE          DATE,                                      /*��������                   */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                   */
   MODI_DATE            DATE,                                      /*�޸�����                   */
   FLAG                 NUMBER(1),                                 /*����״̬                   */
   constraint PK_TB_PUBLH primary key (PUBLH_ID)
);
create unique index AK_TB_PUBLH on TB_PUBLH (PUBLH001,PUBLH002);
create sequence SEQ_TB_PUBLH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLH to public;
grant index  on TB_PUBLH to public;
grant update on TB_PUBLH to public; 
grant delete on TB_PUBLH to public;  
grant insert on TB_PUBLH to public; 
grant select on SEQ_TB_PUBLH to public;   