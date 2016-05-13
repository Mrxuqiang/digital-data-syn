/*
================================================================================
��ṹ����:TB_ASSBB
��ṹ����:���׵����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_ASSBB;
drop index AK_TB_ASSBB;
drop table TB_ASSBB;
create table TB_ASSBB  (
   ASSBB_ID             INTEGER                         not null,  /*������ID                  */
   ASSBB001             INTEGER                         not null,  /*������ID                  */
   ASSBB002             INTEGER                         not null,  /*��Ƭ���ID                  */
   ASSBB003             VARCHAR2(30)                    not null,  /*�ʲ����                  */
   ASSBB004             VARCHAR2(60),                              /*�ʲ�����                  */
   ASSBB005             INTEGER,                                   /*������                  */
   ASSBB006             INTEGER,                                   /*ʹ�ò���                  */
   ASSBB007             NUMBER(5,4),                               /*����                      */
   ASSBB008             VARCHAR2(1) ,                              /*�۾ɳе�����              */
   ASSBB009             VARCHAR2(255) ,                            /*��ŵص�                  */
   ASSBB010             INTEGER,                                   /*ʹ��״��                  */
   ASSBB011             INTEGER,                                   /*���ӷ�ʽ                  */
   ASSBB012             NUMBER(4),                              /*����                      */
   ASSBB013             INTEGER ,                                  /*ʹ����                    */
   ASSBB014             NUMBER(16,2) ,                             /*ԭ��ԭֵ                   */
   ASSBB015             NUMBER(16,2),                              /*����ԭֵ                   */
   ASSBB016             NUMBER(16,2),                              /*�ۼ��۾�                   */
   ASSBB017             NUMBER(4),                                 /*ʹ����                     */
   ASSBB018             NUMBER(2),                                 /*ʹ����                     */
   ASSBB019             NUMBER(16,2),                              /*��ֵ׼��                   */
   ASSBB020             NUMBER(5,4),                               /*����ֵ��                   */
   ASSBB021             NUMBER(16,2),                              /*����ֵ                     */
   ASSBB022             NUMBER(18,3),                              /*��������                   */
   ASSBB023             INTEGER,                                   /*�䶯�������             */
   ASSBB024             INTEGER,                                   /*�䶯��ʹ�ò���             */
   ASSBB025             NUMBER(5,4),                               /*�䶯�����                 */
   ASSBB026             VARCHAR2(1),                               /*�䶯���۾ɳе�����         */
   ASSBB027             VARCHAR2(255),                             /*�䶯���ŵص�             */
   ASSBB028             INTEGER,                                   /*�䶯��ʹ��״��             */
   ASSBB029             INTEGER,                                   /*�䶯�����ӷ�ʽ             */
   ASSBB030             NUMBER(4),                                 /*�䶯������                 */
   ASSBB031             INTEGER,                                   /*�䶯��ʹ����               */
   ASSBB032             NUMBER(16,2),                              /*�䶯��ԭ��ԭֵ             */
   ASSBB033             NUMBER(16,2),                              /*�䶯�󱾱�ԭֵ             */
   ASSBB034             NUMBER(16,2),                              /*�䶯���ۼ��۾�             */    
   ASSBB035             NUMBER(4) ,                                /*�䶯��ʹ����               */
   ASSBB036             NUMBER(2),                                 /*�䶯��ʹ����               */
   ASSBB037             NUMBER(5,4) ,                              /*�䶯�󾻲�ֵ��             */
   ASSBB038             NUMBER(16,2),                              /*�䶯�󾻲�ֵ               */
   ASSBB039             NUMBER(18,3) ,                              /*�䶯���ܹ�����             */
   ASSBB040             NUMBER(16,2),                              /*�䶯���ֵ׼��             */
   ASSBB041             NUMBER(16,2),                              /*�����۾ɶ�                 */
   ASSBB042             VARCHAR2(1),                               /*�۾ɷ���                   */
   ASSBB043             VARCHAR2(255),                             /*�䶯ԭ��                   */
   ASSBB044             NUMBER(16,2),                              /*��������                   */
   ASSBB045             NUMBER(16,2),                              /*�������                   */
   ASSBB046             VARCHAR2(1)                      not null, /*����ƾ֤                   */ 
   ASSBB047             INTEGER                                    /*�ʲ����ID                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_ASSBB primary key (ASSBB_ID)
);
create unique index AK_TB_ASSBB on TB_ASSBB (ASSBB001,ASSBB006);
create sequence SEQ_TB_ASSBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSBB to public;
grant index  on TB_ASSBB to public;
grant update on TB_ASSBB to public; 
grant delete on TB_ASSBB to public;  
grant insert on TB_ASSBB to public; 
grant select on SEQ_TB_ASSBB to public;   